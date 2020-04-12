<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fpassword.aspx.cs" Inherits="fpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password | Modern School</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <link rel="shortcut icon" href="images/ico/MesIcon.jpg" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"/>



    <script type="text/javascript">
        function Validate() 
        {
             if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(form1.email.value))
              {
                return (true)
              }
                alert("You have entered an invalid email address!")
                return (false)
        }
    </script>

   <style>
       .spacer{
           margin-left:400px;
           margin-top:70px;
       }
   </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <nav class="navbar navbar-expand-lg  navbar-dark" style="background-color:teal; text-align:center;">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
             
            <ul class="navbar-nav">
               <li>
                     <a class="navbar-brand" href="Default.aspx"><img src="images/Meslogo.jpg" width="200" height="70" alt="logo"></a>  
               </li>
            </ul>

            <ul class="navbar-nav ml-auto">
               <li class="nav-item active">
                    <a class="nav-link" href="Default.aspx">Home <span class="sr-only">(current)</span></a>
               </li>                       
            </ul> 
                     
            </div>                 
            </nav> 
          
            <nav class="navbar navbar-expand-lg navbar-light bg-cyan" style="background-color:cyan;"> 
                    
              <h2>Password Recovery</h2>
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">          
                </ul>
               <!--<a-- href="Login.aspx"><i class="fas fa-sign-in-alt fa-2x"></i></a-->       
            </nav> <!--navbar-->
            <div class="container">  
                <div class="spacer">
                    <div class="form-group">               
                        <div class="col-sm-11">
                            <div class="row">
                            <div class="col-md-6">
                                <div class="form-group"> 
                                    <b><label class="control-label">Enter Your Email Here</label></b>
                                    <asp:TextBox ID="email1" onchange="Validate()" required class="form-control" placeholder="someone@example.com" runat="server" OnTextChanged="email1_TextChanged"></asp:TextBox>
                                </div> 
                            </div>    
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12 text-center">
		        <div class="col-md-offset-6">			    
                    <asp:Button ID="send" class="btn btn-success btn-lg"  style="margin-bottom:20px;" runat="server" Text="SEND" OnClick="send_Click" />
		        </div>
            </div>

            <div class="col-md-12 text-center">
		        <div class="col-md-offset-6">	
                    <asp:Label runat="server" ID="lblMessage" Text="" class="multi"/>
		        </div>
            </div>
            <br />
            <div class="col-md-12 text-center">
		        <div class="col-md-offset-6">	
                    <a href="Login.aspx"><i class="fas fa-sign-in-alt fa-3x"></i></a>
		        </div>
            </div>
            

        </div>
    </form>

    <div class="fixed-bottom">
        <div class="jumbotron" style="background-color:teal; height:40px; margin-bottom:0px;">
          <div class="container">
                <div class="col-sm-15">
                    &copy; <%: DateTime.Now.Year %> Modern School. All Rights Reserved.
                </div>
          </div>
        </div>
    </div>
</body>
</html>
