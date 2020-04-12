using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Contactus : System.Web.UI.Page
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

        string sql = @"INSERT INTO Contactus(fname,lname,email,phone,message) 
                        VALUES('"+fname.Text+"','"+lname.Text+"','"+email.Text+"','"+contact.Text+"','"+msg.Text+"')";

        scm = new SqlCommand(sql, sc);
        sda.InsertCommand = new SqlCommand(sql, sc);
        sda.InsertCommand.ExecuteNonQuery();
        sc.Close();

        string msg1 = "Your Response Have Been Saved Successfully. Thank You For Your Valuable Response.";
        string script = "window.onload=function()" +
                        "{alert('";
        script += msg1;
        script += "')};";
        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
    }

    protected void fname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void lname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void email_TextChanged(object sender, EventArgs e)
    {

    }

    protected void contact_TextChanged(object sender, EventArgs e)
    {

    }

    protected void msg_TextChanged(object sender, EventArgs e)
    {

    }

    
}