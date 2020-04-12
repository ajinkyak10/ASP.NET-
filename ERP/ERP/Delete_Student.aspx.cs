using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Delete_Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string con = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=SERP;Integrated Security=True";
        SqlConnection sc = new SqlConnection(con);
        SqlCommand scm;
        sc.Open();
       
        SqlDataAdapter sda = new SqlDataAdapter();

        string sql = @"DELETE sregister WHERE rollno='"+roll.Text+"' OR dob='"+dob.Text+"' ";

        sda.DeleteCommand = new SqlCommand(sql, sc);

        sda.DeleteCommand.ExecuteNonQuery();
        string msg = "Student Details Have Been Deleted Successfully.";
        string script = "window.onload=function()" +
                        "{alert('";
                        script += msg;
                        script += "')};";
        
        sc.Close();    
    }

    protected void delete_by_SelectedIndexChanged(object sender, EventArgs e)
    {

    }   

    protected void roll_TextChanged(object sender, EventArgs e)
    {

    }

    protected void dob_TextChanged(object sender, EventArgs e)
    {

    }
}