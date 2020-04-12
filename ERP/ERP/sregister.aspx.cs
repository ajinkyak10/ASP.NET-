using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class sregister : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void Button1_Click(object sender, EventArgs e)//submit
    {
        string con = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=SERP;Integrated Security=True";
        SqlConnection sc = new SqlConnection(con);

        sc.Open();
        SqlCommand scm;
        SqlDataAdapter sda = new SqlDataAdapter();
        SqlDataReader sdr;
        
        string sql = @"Insert into sregister(rno,rdate,rollno,sname,fname,dob,contact,gender,class,ladd,padd,doc) 
                VALUES ('" + TextBox1.Text + "','" + date.Text + "', '" + roll.Text + "', '" + scname.Text + "','" + fname.Text + "','"+dob.Text+"','" + contact.Text + "','" + male.Text + "','" + standard.Text +"','"+ladd.Text+"','"+padd.Text+"')";

        scm = new SqlCommand(sql, sc);

        sda.InsertCommand = new SqlCommand(sql, sc);
        sda.InsertCommand.ExecuteNonQuery();      

        string msg = "Student Record Have Been Saved Successfully.";
        string script = "window.onload=function()" +
                        "{alert('";
                        script += msg;
                        script += "')};";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        sc.Close();
        //Response.Redirect(Request.Url.AbsoluteUri);

    }

    protected void Save(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void date_TextChanged(object sender, EventArgs e)
    {

    }

    protected void roll_TextChanged(object sender, EventArgs e)
    {

    }

    protected void scname_TextChanged(object sender, EventArgs e)
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

    protected void male_TextChanged(object sender, EventArgs e)
    {

    }

    protected void female_TextChanged(object sender, EventArgs e)
    {

    }

    protected void standard_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ladd_TextChanged(object sender, EventArgs e)
    {

    }

    protected void padd_TextChanged(object sender, EventArgs e)
    {

    }

    protected void dob_TextChanged(object sender, EventArgs e)
    {

    }

    protected void contact_TextChanged(object sender, EventArgs e)
    {

    }
}