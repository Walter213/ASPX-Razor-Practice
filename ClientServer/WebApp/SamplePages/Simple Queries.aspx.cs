using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

#region AdditionalNamespaces
using NorthWindSystem.BLL;
using NorthWindSystem.Data;
#endregion

namespace WebApp.SamplePages
{
    public partial class Simple_Queries : System.Web.UI.Page
    {
        int productid = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            // clear old messages
            MessageLabel.Text = "";
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            // validate your input
            if (string.IsNullOrEmpty(SearchArg.Text.Trim()))
            {
                // bad :message to user
                MessageLabel.Text = "Product is required smartass";
            }
            else if (int.TryParse(SearchArg.Text, out productid))
            {
                // good: standard lookup pattern and display
                // since we are leaving this project (webapp)
                //  and going to another project (BLL) user
                //   friendly error handling is required
                try
                {
                    // create and instance of the appropiate BLL class
                    ProductController sysmgr = new ProductController();
                    // issue your request to the appropiate BLL class method
                    Product results = sysmgr.Product_Get(int.Parse(SearchArg.Text));
                    // test results to see if anything was found
                    // null: productID was not found
                    // otherwise: Product instance exists
                    if (results == null)
                    {
                        // bad: message to user
                        MessageLabel.Text = "No Data found for the supplied ID";
                    }
                    else
                    {
                        // good: found
                        ProductID.Text = results.ProductID.ToString();
                        ProductName.Text = results.ProductName;
                    }
                }
                catch(Exception ex)
                {
                    MessageLabel.Text = ex.Message;
                }
                
            }
            else
            {
                // bad :message to user
                MessageLabel.Text = "ProductID must be a number greater than 0 smartass";
            }
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            SearchArg.Text = "";
            ProductID.Text = "";
            ProductName.Text = "";
        }
    }
}