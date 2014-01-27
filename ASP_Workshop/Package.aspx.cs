using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Package : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // sets Application states when they have no value
        if (Session["CustID"] == null)
        {
            //customerId = 0;
            Session.Add("CustID", null);
        }

        // transfer data from application states to variables
        else
        {
            //customerId = Convert.ToInt32(Session["CustID"]);
            lblTest.Text = "CustID = " + Session["CustID"];
        }
    }
}