using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace SignupPage
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        /// <summary>
        /// This writes to the totally secure text file
        /// </summary>
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string path = Server.MapPath("~/Data/TotallySecureStorage.txt");

            string appendText =
                "⚫==========⚫\r\n"
                + txtFirstName.Text + "\r\n"
                + txtLastName.Text + "\r\n"
                + txtCountry.Text + "\r\n"
                + txtBirth.Text + "\r\n"
                + txtSkill.Text + "\r\n"
                + txtDegree.Text + "\r\n"
                + txtUsername.Text + "\r\n"
                + txtPassword.Text + "\r\n";

            File.AppendAllText(path, appendText);

            SingupDiv.Visible = false;
            OutputDiv.Visible = true;
        }
    }
}