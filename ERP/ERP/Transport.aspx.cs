using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Transport : System.Web.UI.Page
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
        sql = @"INSERT INTO transport(rcode,destination,roll,sname,class,division,fdate,tdate,distance,fare) 
                VALUES('"+rcode.Text+"','"+dest.Text+"','"+roll.Text+"','"+sname.Text+"','"+standard.Text+"','"+division.Text+"','"+sdate.Text+"','"+edate.Text+"','"+dist.Text+"','"+fare.Text+"')";

        scm = new SqlCommand(sql, sc);
        sda.InsertCommand = new SqlCommand(sql,sc);
        sda.InsertCommand.ExecuteNonQuery();        
        sc.Close();

        string msg = "Student Transportation Details Have Been Submitted Successfully.";
        string script = "window.onload=function()" +
                        "{alert('";
        script += msg;
        script += "')};";
        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
    }
   
    protected void rcode_TextChanged(object sender, EventArgs e)
    {

    }

    protected void dest_TextChanged(object sender, EventArgs e)
    {

    }

    protected void roll_TextChanged(object sender, EventArgs e)
    {

    }

    protected void sname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void standard_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void division_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void sdate_TextChanged(object sender, EventArgs e)
    {

    }

    protected void edate_TextChanged(object sender, EventArgs e)
    {

    }

    protected void dist_TextChanged(object sender, EventArgs e)
    {

    }

    protected void fare_TextChanged(object sender, EventArgs e)
    {

    }
}