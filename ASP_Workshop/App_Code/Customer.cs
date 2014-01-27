using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customer
/// </summary>
public class Customer
{
    public int customerId;
    public string custFirstName;
    public string custLastName;
    public string custAddress;
    public string custCity;
    public string custProv;
    public string custPostal;
    public string custCountry;
    public string custHomePhone;
    public string custBusPhone;
    public string custEmail;
    public int agentId;

    public int CustomerId
    {
        get { return customerId; }
        set { customerId = value; }
    }
    public string CustFirstName
    {
        get { return custFirstName; }
        set { custFirstName = value; }
    }
    public string CustLastName
    {
        get { return custLastName; }
        set { custLastName = value; }
    }
    public string CustAddress
    {
        get { return custAddress; }
        set { custAddress = value; }
    }
    public string CustCity
    {
        get { return custCity; }
        set { custCity = value; }
    }
    public string CustProv
    {
        get { return custProv; }
        set { custProv = value; }
    }
    public string CustPostal
    {
        get { return custPostal; }
        set { custPostal = value; }
    }
    public string CustCountry
    {
        get { return custCountry; }
        set { custCountry = value; }
    }
    public string CustHomePhone
    {
        get { return custHomePhone; }
        set { custHomePhone = value; }
    }
    public string CustBusPhone
    {
        get { return custBusPhone; }
        set { custBusPhone = value; }
    }
    public string CustEmail
    {
        get { return custEmail; }
        set { custEmail = value; }
    }
    public int AgentId
    {
        get { return agentId; }
        set { agentId = value; }
    }

	public Customer()
	{
        //blank constructor
	}
    public Customer(int newCustomerId, //full constructor
        string newCustFirstName, 
        string newCustLastName, 
        string newCustAddress, 
        string newCustCity,
        string newCustProv,
        string newCustPostal,
        string newCustCountry,
        string newCustHomePhone,
        string newCustBusPhone,
        string newCustEmail,
        int newAgentId)
    {
        CustomerId = newCustomerId;
        CustFirstName = newCustFirstName;
        CustLastName = newCustLastName;
        CustAddress = newCustAddress;
        CustCity = newCustCity;
        CustProv = newCustProv;
        CustPostal = newCustPostal;
        CustCountry = newCustCountry;
        CustHomePhone = newCustHomePhone;
        CustBusPhone = newCustBusPhone;
        CustEmail = newCustEmail;
        AgentId = newAgentId;
    }
}