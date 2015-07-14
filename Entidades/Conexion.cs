using System;
using System.Data;
using System.Data.SqlClient;

namespace Entidades
{
    public class Conexion
    {
        public string cadenaConexion { get; set; }

        public Conexion()
        {
            cadenaConexion = "Data Source=localhost;Initial Catalog=Ejercicios;Integrated Security=True";
        }

        public DataTable ConsultCustomers()
        {
            var ds = new DataTable();
            try
            {
                using (var conexion = new SqlConnection(cadenaConexion))
                {
                    using (var comando = new SqlCommand("Customers_CRUD", conexion))
                    {
                        comando.CommandType = CommandType.StoredProcedure;
                        comando.Parameters.Add("@Action", SqlDbType.VarChar).Value = "SELECT";

                        var da = new SqlDataAdapter { SelectCommand = comando };

                        conexion.Open();
                        comando.ExecuteNonQuery();
                        da.Fill(ds);
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }

            return ds;
        }

        public void InsertCustomer(string name, string country)
        {
            try
            {
                using (var conexion = new SqlConnection(cadenaConexion))
                {
                    using (var comando = new SqlCommand("Customers_CRUD", conexion))
                    {
                        comando.CommandType = CommandType.StoredProcedure;
                        comando.Parameters.Add("@Action", SqlDbType.VarChar).Value = "INSERT";
                        comando.Parameters.Add("@Name", SqlDbType.VarChar).Value = name;
                        comando.Parameters.Add("@Country", SqlDbType.VarChar).Value = country;

                        conexion.Open();
                        comando.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }


        public void UpdateCustomer(int customerId, string name, string country)
        {
            try
            {
                using (var conexion = new SqlConnection(cadenaConexion))
                {
                    using (var comando = new SqlCommand("Customers_CRUD", conexion))
                    {
                        comando.CommandType = CommandType.StoredProcedure;
                        comando.Parameters.Add("@Action", SqlDbType.VarChar).Value = "UPDATE";
                        comando.Parameters.Add("@CustomerId", SqlDbType.Int).Value = customerId;
                        comando.Parameters.Add("@Name", SqlDbType.VarChar).Value = name;
                        comando.Parameters.Add("@Country", SqlDbType.VarChar).Value = country;

                        conexion.Open();
                        comando.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void DeleteCustomer(int customerId)
        {
            try
            {
                using (var conexion = new SqlConnection(cadenaConexion))
                {
                    using (var comando = new SqlCommand("Customers_CRUD", conexion))
                    {
                        comando.CommandType = CommandType.StoredProcedure;
                        comando.Parameters.Add("@Action", SqlDbType.VarChar).Value = "DELETE";
                        comando.Parameters.Add("@CustomerId", SqlDbType.Int).Value = customerId;

                        conexion.Open();
                        comando.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
