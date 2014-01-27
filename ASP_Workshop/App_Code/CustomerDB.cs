using System;
using System.Data;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.ComponentModel;

[DataObject(true)]
public static class CustomerDB
{
    [DataObjectMethod(DataObjectMethodType.Select)]
    public static List<Customer> GetCustomer()
    {
        List<Customer> customerList = new List<Customer>();
        string sel = "SELECT CustomerId, (CustFirstName+ ' '+CustLastName) AS FullName "
            + "FROM Customers ORDER BY CustFirstName";
        using (SqlConnection con = TravelExpertsDB.GetConnection())
        {
            using (SqlCommand cmd = new SqlCommand(sel, con))
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                Customer customer;
                while (dr.Read())
                {
                    customer = new Customer();
                    customer.CustomerId = (int)dr["CustomerId"];
                    customer.CustFirstName = dr["FullName"].ToString();
                    //customer.CustFirstName = dr["CustFirstName"].ToString();
                    //customer.CustLastName = dr["CustLastName"].ToString();
                    customerList.Add(customer);
                }
                dr.Close();
            }
        }
        return customerList;
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public static Customer GetCustomerById(int inputCustId)
    {
        Customer CustomerGot = new Customer();
        //List<Customer> customerList = new List<Customer>();
        string sel = "SELECT CustomerId, CustFirstName + ' ' + CustLastName as FullName, "
                + "CustAddress, CustCity, CustProv, CustPostal, CustCountry, CustHomePhone, "
              + "CustBusPhone, CustEmail, AgentId "
            + "FROM Customers "
            + "WHERE CustomerId = @CustomerId";
    //    string sel = "SELECT CustomerId, CustFirstName, CustLastName, "
    //    + "CustAddress, CustCity, CustProv, CustPostal, CustCountry, CustHomePhone, "
    //  + "CustBusPhone, CustEmail, AgentId "
    //+ "FROM Customers "
    //+ "WHERE CustomerId = @CustomerId";
        using (SqlConnection con = TravelExpertsDB.GetConnection())
        {
            using (SqlCommand cmd = new SqlCommand(sel, con))
            {
                cmd.Parameters.AddWithValue("CustomerId", inputCustId);

                con.Open(); 
                SqlDataReader readerObj = cmd.ExecuteReader(CommandBehavior.SingleRow);
                if (readerObj.Read()) //while readerObj has lines to read, go through each one 
                //{
                    //add to a customer
                    CustomerGot = new Customer((int)readerObj[0], (string)readerObj[1], 
                        (string)readerObj[2], (string)readerObj[3], (string)readerObj[4], 
                        (string)readerObj[5], (string)readerObj[6], (string)readerObj[7], 
                        (string)readerObj[8], (string)readerObj[9], (int)readerObj[10]);
                //}
                readerObj.Close();
            }
        }
        return CustomerGot;
    }
    // Paul
    public static Customer GetCustomerInfo(int custId)
    {
        //public static function requires packageId and returns a List of products accociated with that package
        SqlConnection connection = TravelExpertsDB.GetConnection(); //get connection string from main TravelExpertsDB static class
        Customer CustomerGot = new Customer();
        //sql statement finds all accociated products
        string sql = "SELECT CustomerId, CustFirstName + ' ' + CustLastName as FullName, "
                + "CustAddress, CustCity, CustProv, CustPostal, CustCountry, CustHomePhone, "
              + "CustBusPhone, CustEmail, AgentId "
            + "FROM Customers "
            + "WHERE CustomerId = @CustomerId";
        SqlCommand selectCommand = new SqlCommand(sql, connection);
        selectCommand.Parameters.AddWithValue("@custId", custId);
        try
        {
            connection.Open(); //open connection
            SqlDataReader readerObj = selectCommand.ExecuteReader(); //create readerObj from SqlDataReader Class and execute sql
            while (readerObj.Read()) //while readerObj has lines to read, go through each one 
            {
                //add to product list all of the products found
                CustomerGot = new Customer((int)readerObj[0], (string)readerObj[1], (string)readerObj[2], (string)readerObj[3], (string)readerObj[4], (string)readerObj[5], (string)readerObj[6], (string)readerObj[7], (string)readerObj[8], (string)readerObj[9], (int)readerObj[10]);
            }
        }
        catch (Exception ex) //catch exceptions
        {
            throw ex;
        }
        finally
        {
            connection.Close(); //close connection
        }
        return CustomerGot;
    }

    
}