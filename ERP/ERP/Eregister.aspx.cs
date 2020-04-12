using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Eregister : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        string con = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=SERP;Integrated Security=True";
        SqlConnection sc = new SqlConnection(con);

        sc.Open();
        SqlCommand scm;
        SqlDataAdapter sda = new SqlDataAdapter();
        
        string sql = "";
        sql = @"INSERT INTO eregister(rno,rdate,idate,sname,tchoice,teacherid,fname,mname,lname,dob,contact,gender,class,ladd,padd)
              VALUES('" + TextBox1.Text + "','" + date.Text + "','" + idate.Text + "','" + scname.Text + "','" + tchoice.Text + "','" + psname.Text + "','" + fname.Text + "','" + mname.Text + "','" + lname.Text +"','"+ dob.Text +"','"+ contact.Text +"','"+ male.Text +"','"+ standard.Text +"','"+ ladd.Text +"','"+ padd.Text +"')";

        scm = new SqlCommand(sql,sc);

        sda.InsertCommand=new SqlCommand(sql,sc);
        sda.InsertCommand.ExecuteNonQuery();       

        string msg = "Faculty Details Have Been Saved Successfully.";
        string script = "window.onload=function()" +
                        "{alert('";
                        script += msg;
                        script += "')};";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

        sc.Close();
        //Response.Redirect(Request.Url.AbsoluteUri);
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void date_TextChanged(object sender, EventArgs e)
    {

    }

    protected void scname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void idate_TextChanged(object sender, EventArgs e)//issue date
    {

    }

    protected void tchoice_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void psname_TextChanged(object sender, EventArgs e)
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

    protected void standard_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ladd_TextChanged(object sender, EventArgs e)
    {
       
    }

    protected void padd_TextChanged(object sender, EventArgs e)
    {

    }

}