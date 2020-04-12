using System;
using Syncfusion.Pdf;
using Syncfusion.Pdf.Graphics;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Certificate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void pdf_Click(object sender, EventArgs e)
    {
        using (PdfDocument document = new PdfDocument())
        {
            //Add a page to the document
            PdfPage page = document.Pages.Add();

            //Create PDF graphics for the page
            PdfGraphics graphics = page.Graphics;

            //Set the standard font
            PdfFont font = new PdfStandardFont(PdfFontFamily.Helvetica, 20);

            //Draw the text
            graphics.DrawString("Hello World!!!", font, PdfBrushes.Black, new PointF(0, 0));
            graphics.DrawString("Hello World!!!", font, PdfBrushes.Black, new PointF(0, 0));


            // Open the document in browser after saving it
            document.Save("Output.pdf", HttpContext.Current.Response, HttpReadType.Open);
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        string con = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=SERP;Integrated Security=True";
        SqlConnection sc = new SqlConnection(con);

        sc.Open();
        SqlCommand scm;
        SqlDataAdapter sda = new SqlDataAdapter();

        string sql = "";

        sql = @"INSERT INTO Certificate(roll,sname,rdate,scname,class,division,marathi,science,history,geo,math,eng,total,avg,grade,result) 
                VALUES('"+roll.Text+"','"+sname.Text+"','"+date.Text+"','"+scname.Text+ "','"+standard.Text+ "','"+division.Text+ "','"+mar.Text+ "','"+sci.Text+ "','"+hist.Text+ "','"+geo.Text+ "','"+math.Text+ "','"+eng.Text+ "','"+total.Text+ "','"+avg.Text+ "','"+grade.Text+ "','"+result.Text+"')";

        scm = new SqlCommand(sql, sc);

        sda.InsertCommand = new SqlCommand(sql, sc);
        sda.InsertCommand.ExecuteNonQuery();       

        string msg = "Student Grade Certificate Have Been Generated Successfully.";
        string script = "window.onload=function()" +
                        "{alert('";
                        script += msg;
                        script += "')};";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

        sc.Close();
        //Response.Redirect(Request.Url.AbsoluteUri);
    }

    protected void roll_TextChanged(object sender, EventArgs e)
    {

    }

    protected void sname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void date_TextChanged(object sender, EventArgs e)
    {

    }

    protected void scname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void standard_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void division_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void mar_TextChanged(object sender, EventArgs e)
    {

    }

    protected void sci_TextChanged(object sender, EventArgs e)
    {

    }

    protected void hist_TextChanged(object sender, EventArgs e)
    {

    }

    protected void geo_TextChanged(object sender, EventArgs e)
    {

    }

    protected void math_TextChanged(object sender, EventArgs e)
    {

    }

    protected void eng_TextChanged(object sender, EventArgs e)
    {

    }

    protected void total_TextChanged(object sender, EventArgs e)
    {

    }

    protected void avg_TextChanged(object sender, EventArgs e)
    {

    }

    protected void grade_TextChanged(object sender, EventArgs e)
    {

    }

    protected void result_TextChanged(object sender, EventArgs e)
    {

    }

}