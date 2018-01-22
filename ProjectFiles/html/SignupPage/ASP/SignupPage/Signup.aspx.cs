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
                "\r\n⚫==========⚫\r\n"
                + txtFirstName.Text + "\r\n"
                + txtLastName.Text + "\r\n"
                + txtCountry.Text + "\r\n"
                + txtBirth.Text + "\r\n"
                + txtSkill.Text + "\r\n"
                + txtDegree.Text + "\r\n"
                + txtUsername.Text + "\r\n"
                + txtPassword.Text;

            if(chkDiabetes.Checked == true)
            {
                appendText = appendText
                    + "\r\n"
                    + "Diabetes";
            }
            if (chkHighBlood.Checked == true)
            {
                appendText = appendText
                    + "\r\n"
                    + "High Blood Pressure";
            }
            if (chkLowBlood.Checked == true)
            {
                appendText = appendText
                    + "\r\n"
                    + "Low Blood Pressure";
            }
            if (chkOsteoporosis.Checked == true)
            {
                appendText = appendText
                    + "\r\n"
                    + "Osteoporosis";
            }

            if(radlstHeart.Items[0].Selected == true)
            {
                appendText = appendText
                    + "\r\n"
                    + "Does Have History of Heart Diseases";
            }
            else
            {
                appendText = appendText
                    + "\r\n"
                    + "Does Not Have History of Heart Diseases";
            }


            File.AppendAllText(path, appendText);

            SingupDiv.Visible = false;
            OutputDiv.Visible = true;
        }
    }
}