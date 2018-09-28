using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContentMS
{
    public partial class login : System.Web.UI.Page
    {
        Login user = new Login();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("store.aspx");
        }

        protected void txtpassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnlink1_Click(object sender, EventArgs e)
        {
            txtstud_id_num.Visible = false;
            btnlogin.Visible = true;
            btnsignup.Visible = false;
        }

        protected void txtstud_id_num_TextChanged(object sender, EventArgs e)
        {

        }

    }
}