using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }  

    protected void uname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void pass_TextChanged(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    { 
        bool validate = ExampleCaptcha.Validate(txtCaptcha.Text);
        
        /*string msg1 = "captcha Invalid";
        string script1 = "window.onload=function()" +
                        "{alert('";
        script1 += msg1;
        script1 += "')};";
        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script1, true);*/

        txtCaptcha.Text = null;
        if ((uname.Text == "User" && pass.Text == "User"))
        {                      
            if(!validate)
            {                
                txtCaptcha.Text="Invalid Captcha";
                txtCaptcha.ForeColor = Color.Red;
            }
            else
            {
                Response.Write("Valid Captcha");
               // Response.Redirect("Register.aspx");               
            }
            Server.Transfer("Register.aspx");
        }
        else
        {
            string msg = "Error! Invalid Username or Password";
            string script = "window.onload=function()" +
                            "{alert('";
                            script += msg;
                            script += "')};";
                            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }
        //ClearInputs(Page.Controls);
        
   
    }
    /*void ClearInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            ClearInputs(ctrl.Controls);
        }
    }*/
    protected void txtCaptcha_TextChanged(object sender, EventArgs e)
    {
        
    }
}