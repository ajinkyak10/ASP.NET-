using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Fees : System.Web.UI.Page
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

        string sql = @"INSERT INTO fees(rollno,sname,class,division,date,scname,tfee,afee,efee,sfee,lfee,ifee,ofee,lcfee,total) 
                    VALUES('"+roll.Text+"','"+ sname.Text+"','"+standard.Text+"','"+division.Text+"','"+date.Text+"','"+scname.Text+"','"+tfee.Text+"','"+afee.Text+"','"+efee.Text+"','"+sfee.Text+"','"+lfee.Text+"','"+ifee.Text+"','"+ofee.Text+"','"+lcfee.Text+"','"+total.Text+"')";
        
        scm = new SqlCommand(sql, sc);
        sda.InsertCommand = new SqlCommand(sql, sc);
        sda.InsertCommand.ExecuteNonQuery();
        sc.Close();
           
        string msg = "Student Fees Details Have Been Saved Successfully.";
        string script = "window.onload=function()" +
                        "{alert('";
        script += msg;
        script += "')};";
        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
    }

    protected void roll_TextChanged(object sender, EventArgs e)
    {
        roll.Text="";
    }

    protected void sname_TextChanged(object sender, EventArgs e)
    {
        string con = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=SERP;Integrated Security=True";
        SqlConnection sc = new SqlConnection(con);

        sc.Open();
        SqlCommand scm;
        SqlDataReader sdr;
        
        sname.Text = "";
        standard.Text = "";
        string sql = @"SELECT fname,class FROM sregister WHERE rollno='"+roll.Text+"'";
        

        scm = new SqlCommand(sql, sc);
        sdr = scm.ExecuteReader();
        while (sdr.Read())
        {
            sname.Text = sname.Text + sdr.GetValue(0);
            standard.Text = standard.Text + sdr.GetValue(1);
        }

    }

    protected void standard_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void division_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void date_TextChanged(object sender, EventArgs e)
    {

    }

    protected void scname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void tfee_TextChanged(object sender, EventArgs e)
    {

    }

    protected void afee_TextChanged(object sender, EventArgs e)
    {

    }

    protected void efee_TextChanged(object sender, EventArgs e)
    {

    }

    protected void sfee_TextChanged(object sender, EventArgs e)
    {

    }

    protected void lfee_TextChanged(object sender, EventArgs e)
    {

    }

    protected void ifee_TextChanged(object sender, EventArgs e)
    {

    }

    protected void ofee_TextChanged(object sender, EventArgs e)
    {

    }

    protected void lcfee_TextChanged(object sender, EventArgs e)
    {

    }

    protected void total_TextChanged(object sender, EventArgs e)
    {

    }

}