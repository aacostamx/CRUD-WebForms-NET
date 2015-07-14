using System.Data;
using Entidades;

namespace Negocio
{
    public class Negocio
    {
        public DataTable ConsultCustomers()
        {
            return new Conexion().ConsultCustomers();
        }

        public void InsertCustomer(string name, string country)
        {
            new Conexion().InsertCustomer(name, country);
        }

        public void UpdateCustomer(int customerId, string name, string country)
        {
            new Conexion().UpdateCustomer(customerId, name, country);
        }

        public void DeleteCustomer(int customerId)
        {
            new Conexion().DeleteCustomer(customerId);
        }
    }
}
