using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp.SamplePages
{
    public partial class ContestEntry : System.Web.UI.Page
    {
        public static List<GridviewCollectionContest> Entry;

        // if we had a database, the data would be stored there using this static List<T>
        // is ONLY done in this example because we have no database.
        protected void Page_Load(object sender, EventArgs e)
        {
            Message.Text = "";

            if (!Page.IsPostBack)
            {
                Entry = new List<GridviewCollectionContest>();
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //validate the data coming in
            if (Page.IsValid)
            {
                //validate the user checking the terms
                if (Terms.Checked)
                {
                    // yes: create/load, add to list, display list
                }
                else
                {
                    // no: message
                    Message.Text = "You did not agree to the terms of this context. DENIED LITTLE SHIT";
                }
            }           
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            FirstName.Text = "";
            LastName.Text = "";
            StreetAddress1.Text = "";
            StreetAddress2.Text = "";
            City.Text = "";
            Province.SelectedIndex = 0;
            PostalCode.Text = "";
            EmailAddress.Text = "";
            CheckAnswer.Text = "";            
        }
    }
}