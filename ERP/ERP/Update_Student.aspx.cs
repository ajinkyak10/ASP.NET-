using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Update_Student : System.Web.UI.Page
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

        string sql = @"UPDATE sregister SET 
                    rollno='" +nroll.Text+ "',fname='"+ fname.Text +"', mname='"+mname.Text+"', lname='"+lname.Text+"',dob='"+dob.Text+"',contact='"+contact.Text+"',gender='"+male.Text+"',ladd='"+ladd.Text+"',padd='"+padd.Text+"',class='"+standard.Text+"' WHERE rollno='"+ roll.Text +"'";
       
        scm = new SqlCommand(sql, sc);
        sda.UpdateCommand = new SqlCommand(sql, sc);
        sda.UpdateCommand.ExecuteNonQuery();       

        string msg = "Student Details Have Been Updated Successfully.";
        string script = "window.onload=function()" +
                        "{alert('";
                        script += msg;
                        script += "')};";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

        sc.Close();
        Response.Redirect(Request.Url.AbsoluteUri);
    }

    protected void roll_TextChanged(object sender, EventArgs e)
    {

    }

    protected void nroll_TextChanged(object sender, EventArgs e)
    {

    }

    protected void standard_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void fname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void mname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void lname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void dob_TextChanged(object sender, EventArgs e)
    {

    }

    protected void contact_TextChanged(object sender, EventArgs e)
    {

    }

    protected void male_TextChanged(object sender, EventArgs e)
    {

    }

    protected void female_TextChanged(object sender, EventArgs e)
    {

    }

    protected void ladd_TextChanged(object sender, EventArgs e)
    {

    }

    protected void padd_TextChanged(object sender, EventArgs e)
    {

    }
   
}