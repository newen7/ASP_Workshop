using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    int customerId = 0;
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
            customerId = Convert.ToInt32(Session["CustID"]);
        }
    }
    protected void ddlCustomer_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["CustID"] = ddlCustomer.SelectedValue;
        btnPackage.Text = "View packages from Customer ID: " + Session["CustID"];
       lblTest.Text = "You're choosing Customer ID: " + Session["CustID"].ToString();
    }
    protected void btnPackage_Click(object sender, EventArgs e)
    {
        lblTest.Text = "Click button and custID = " + Session["CustID"];
        if (Session["CustID"] != null)
        {
            // goes to the result form
            Response.Redirect("~/ProductInfo.aspx");
        }
        else
            lblTest.Text = "Plese select customer before viewing packages.";
    }
}