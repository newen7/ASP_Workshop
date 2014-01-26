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
            customerId = 0;
            Session.Add("CustID", customerId);
        }

        // transfer data from application states to variables
        else
        {
            customerId = (int)Session["CustID"];
        }
    }
    protected void ddlCustomer_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnPackage.Text = "See packages inside customer " + ddlCustomer.SelectedItem.ToString();
    }
}