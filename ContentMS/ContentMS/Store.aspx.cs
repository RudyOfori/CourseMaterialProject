using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace ContentMS
{
    public partial class Store : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxDropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void cbyear_SelectedIndexChanged(object sender, EventArgs e)
        {
           /* if (cbfaculty.SelectedIndex == 0)
            {
                cbdepartment.Items.Add("Computer Science");
                cbdepartment.Items.Add("Mathematics");
                cbdepartment.Items.Add("Acturial Science");

            }
            if (cbfaculty.SelectedIndex == 1)
            {
                cbdepartment.Items.Clear();
                cbdepartment.Items.Add("Human Biology");
                cbdepartment.Items.Add("Dentistry");
                cbdepartment.Items.Add("Nursing");
            }
            if (cbfaculty.SelectedIndex == 2)
            {
                cbdepartment.Items.Add("Computer Science");
                cbdepartment.Items.Add("Mathematics");
                cbdepartment.Items.Add("Acturial Science");
                }*/

            
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
             DropDownList2.Enabled = true;
            if (DropDownList1.SelectedIndex == 0)
            {                
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("Mini Project");
                DropDownList2.Items.Add("Operetions reasearch 2");
                DropDownList2.Items.Add("Embedded systems");

            }
            if (DropDownList1.SelectedIndex == 1)
            {
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("pure math");
                DropDownList2.Items.Add("statistics");
                DropDownList2.Items.Add("Matlab");
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList3.Enabled = true;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList4.Enabled = true;
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            fufile.Enabled = true;
        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            if (fufile.HasFile)
            {
                fufile.PostedFile.SaveAs(Server.MapPath("~/Data/") + fufile.FileName);
            }

            DataTable dt = new DataTable();
            dt.Columns.Add("File", typeof(string));
            dt.Columns.Add("Size", typeof(string));
            dt.Columns.Add("Type", typeof(string));

            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data")))
            {
                FileInfo fi = new FileInfo(strFile);
                dt.Rows.Add(fi.Name, fi.Length, GetFileTypeByExtension(fi.Extension));

            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        private string GetFileTypeByExtension(string extension)
        {
            switch (extension.ToLower())
            {
                case ".doc":
                case ".docx":
                    return "Microsoft Word Document";

                case ".xlsx":
                case ".xls":
                    return "Microsoft Excel Document";

                case ".txt":
                    return "Text Document";

                case ".jpg":
                case ".png":
                    return "Image";

                default:
                    return "Unknown";
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("content-disposition", "filename" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/Data/") + e.CommandArgument);
                Response.End();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}