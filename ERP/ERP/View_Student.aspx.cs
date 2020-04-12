using System;
using System.Text;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class View_Student : System.Web.UI.Page
{
    StringBuilder table = new StringBuilder();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        //SqlConnectionStringBuilder table = new SqlConnectionStringBuilder();
        if (!Page.IsPostBack)
        {
            string con = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=SERP;Integrated Security=True";

            SqlConnection sc = new SqlConnection(con);
            sc.Open();
            SqlCommand scm= new SqlCommand(sc.ToString());
            SqlDataReader sdr;            
            
            scm.CommandText = "select * from [sregister]";
            sdr = scm.ExecuteReader();

            table.Append("<table border='1'>");
            table.Append("<tr><th>rno</th><th>rollno</th>");
            table.Append("</tr>");

            if(sdr.HasRows)
            {
                while(sdr.Read())
                {
                    table.Append("<tr>");
                    table.Append("<td>"+ sdr[0]+"</td>");
                    table.Append("<td>"+sdr[1]+"</td>");
                    table.Append("</tr>");
                }
            }
            table.Append("/table");
            
            sdr.Close();
            sc.Close();
        }
    }
}