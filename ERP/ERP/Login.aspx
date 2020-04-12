<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login | Modern School</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
        <!--[if IE 7]>
            <link rel="stylesheet" href="css/font-awesome-ie7.min.css">
        <![endif]-->

    <link rel="shortcut icon" href="images/ico/MesIcon.jpg" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"/>

    
</head>
<body>
    <center>
    <form id="form" runat="server" autocomplete="off">
        
        <div>
            <nav class="navbar navbar-expand-lg  navbar-dark" style="background-color:teal;">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
             
        <ul class="navbar-nav">
           <li>
                 <a class="navbar-brand" href="Default.aspx"><img src="images/Meslogo.jpg" width="200" height="70" alt="logo"/></a>  
           </li>
        </ul>

        <ul class="navbar-nav ml-auto">
           <li class="nav-item active">
                <a class="nav-link" href="Default.aspx">Home <span class="sr-only">(current)</span></a>
           </li>                         
        </ul> 
                     
        </div>                 
        </nav>      
           
        <div class="card" style="background-color:white; width:100%;" >

        <h5 class="card-header info-color white-text text-center py-4">
        <strong style="font-size:30px; color:#E57373;">Login</strong>
        </h5>
        <br/>
        
        <div style="color:#00E5FF;"><i class="fas fa-user-circle fa-5x"></i>
        <!--Card content-->
        <div class="card-body px-lg-5 pt-0">

        <form class="text-center">
        <br>
        <div class="md-form">
            <div class="col-md-3">
			    <div class="col-md-offset-4">
                    <asp:TextBox ID="uname" required="true" class="form-control" placeholder="Username" runat="server" OnTextChanged="uname_TextChanged"></asp:TextBox>
                    <div></div>
                </div>
            </div>
        </div>

        <br/>
      
        <div class="md-form">
            <div class="col-md-3">
		        <div class="col-md-offset-4">                        
                    <asp:TextBox ID="pass" required="true" type="password" class="form-control" placeholder="Password" runat="server" OnTextChanged="pass_TextChanged"></asp:TextBox>                                               
                </div>                
            </div>       
        </div>
        
        <br />

        <div class="md-form">
            <div class="col-md-3">
		        <div class="col-md-offset-4">                        
                    <asp:textbox ID="txtCaptcha" class="form-control" placeholder="Enter Below Captcha" runat="server" OnTextChanged="txtCaptcha_TextChanged"></asp:textbox>
                    <br />
                    <botdetect:WebFormsCaptcha ID="ExampleCaptcha" runat="server"></botdetect:WebFormsCaptcha>      
                </div>                
            </div>       
        </div>

        
        
        <div class="d-flex justify-content-around">    
        
        </div>
        <br/><br/>
        <div class="col-md-3">
	        <div class="col-md-offset-4">		        
                <asp:Button ID="submit" class="btn btn-info btn-block" runat="server" Text="Login" OnClick="submit_Click"></asp:Button>
	        </div>
        </div>
        <br />

        <div>
          <!-- Forgot password -->
          <a href="fpassword.aspx" style="color:red;">Forgot password?</a>
        </div>
        <!-- Register 
        <p>Not a member?
        <a href="Signup.aspx" style="color:red;">Register</a>
        </p>

        <p>or sign in with:</p>
      
        <a href="#" type="button" role="button">
            <i class="fa fa-google"></i>
        </a>   -->       
       <br/>
    </form>
  </div>

</div>

        </div>
    </form>

    </center>    

    <div class="jumbotron" style="background-color:teal; padding-top:20px;">
        <div class="container">
            <div class="col-sm-20" style="margin-top:10px;">
                &copy; <%: DateTime.Now.Year %> Ajinkya Kulkarni. All Rights Reserved.
            </div>             
        </div>
    </div>
    
</body>
    
</html>
