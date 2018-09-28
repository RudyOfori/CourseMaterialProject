using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContentMS
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string filePath = ("C:\Users\Rudy Ofori\Documents\visual studio 2015\Projects\ContentMS\ContentMS\Data\p315-saroiu.pdf");

            Session["pdfFileName"] = filePath;

            Page.RegisterStartUpScript("Myscript", "window.open('WebForm2.aspx?pdf=yes')");
        }
    }
}