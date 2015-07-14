using System;
using System.Collections.Generic;
using System.Text;

namespace Entidades
{
    public class Customer
    {
        public int CustomerId { get; set; }
        public string Name { get; set; }
        public string Country { get; set; }

        public Customer()
        {
            CustomerId = 0;
            Name = string.Empty;
            Country = string.Empty;
        }

        public Customer(int customerId, string name, string country)
        {
            CustomerId = customerId;
            Name = name;
            Country = country;
        }
    }
}
