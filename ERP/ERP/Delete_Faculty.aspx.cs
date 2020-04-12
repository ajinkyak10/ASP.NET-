using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Delete_Faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string con = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=SERP;Integrated Security=True";
        SqlConnection sc = new SqlConnection(con);

        sc.Open();
        SqlCommand scm;
        SqlDataAdapter sda = new SqlDataAdapter();

        string sql = @"DELETE eregister WHERE teacherid='"+tid.Text+"' OR dob='"+dob.Text+"' ";
        
        sda.DeleteCommand = new SqlCommand(sql, sc);
        sda.DeleteCommand.ExecuteNonQuery();       

        string msg = "Faculty Details Have Been Deleted Successfully.";
        string script = "window.onload=function()" +
                        "{alert('";
        script += msg;
        script += "')};";
        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        sc.Close();
        Response.Redirect(Request.Url.AbsoluteUri);
    }

    protected void delete_by_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void tid_TextChanged(object sender, EventArgs e)
    {

    }

    protected void dob_TextChanged(object sender, EventArgs e)
    {

    }

    
}