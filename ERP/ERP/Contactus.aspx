<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us | Modern School</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <link rel="shortcut icon" href="images/ico/MesIcon.jpg" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"/>

    <style>
        .header {
            color: #36A0FF;
            font-size: 27px;
            padding: 10px;
        }

        .bigicon {
            font-size: 35px;
            color: #36A0FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div>
          <nav class="navbar navbar-expand-lg  navbar-dark" style="background-color:teal;">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
       <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
             
        <ul class="navbar-nav">
           <li>
                 <a class="navbar-brand" href="Default.aspx"><img src="images/Meslogo.jpg" width=200 height=70 alt="logo"></a>  
           </li>
        </ul>
        <ul class="navbar-nav ml-auto">
           <li class="nav-item active">
                <a class="nav-link" href="Login.aspx">Login <span class="sr-only">(current)</span></a>
           </li>
           <li>
               <a class="nav-link" href="Aboutus.aspx">About Us <span class="sr-only">(current)</span></a>
          </li>
           <li>
               <a class="nav-link" href="Admissions.aspx">Admissions <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
               <a class="nav-link" href="Photo Gallary.aspx">Photo Gallary</a>
          </li>
          <li>
               <a class="nav-link" href="Contactus.aspx">Contact Us <span class="sr-only">(current)</span></a>
         </li>             
        </ul> 
                     
        </div>                 
        </nav>
            
    <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="well well-sm">
                <form class="form-horizontal" method="post">
                    <fieldset>
                        <legend class="text-center header">Contact us</legend>
                  
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-4">                 
                                <asp:TextBox ID="fname" required pattern='[A-Za-z \\s]*' placeholder="First Name" class="form-control" runat="server" OnTextChanged="fname_TextChanged"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-4">                              
                                <asp:TextBox ID="lname" required pattern='[A-Za-z \\s]*' placeholder="Last Name" class="form-control" runat="server" OnTextChanged="lname_TextChanged"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fas fa-envelope bigicon"></i></span>
                            <div class="col-md-4">
                                <asp:TextBox ID="email" required pattern="^\w+[\w-\.]*\@\w+((-\w+)|(\w*))\.[a-z]{2,3}$" placeholder="Email Address" class="form-control" runat="server" OnTextChanged="email_TextChanged"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>                            
                                <div class="col-md-4">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text" id="basic-addon1">+91</div>                                 
                                            <asp:TextBox ID="contact" pattern='^[0-9]{10}$' required class="form-control" placeholder="10 Digit Mobile Number" MaxLength="10" runat="server" OnTextChanged="contact_TextChanged"></asp:TextBox>
                                    </div>
                                </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fas fa-pen-square bigicon"></i></span>
                            <div class="col-md-4">
                                <asp:TextBox ID="msg" pattern="^[a-zA-Z0-9_.-]*$" TextMode="MultiLine" class="form-control" placeholder="Enter your message here. We will try to recover it on urgent basis." rows="6" style="margin-top:10px" runat="server" required OnTextChanged="msg_TextChanged"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 text-center">                              
                                <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Text="Submit" OnClick="Button1_Click"></asp:Button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
        </div>
        </center>
    </form>

    <div class="jumbotron" style="background-color:teal; height:40px; margin-bottom:0px;">
      <div class="container">
            <div class="col-sm-15">
                &copy; <%: DateTime.Now.Year %> Modern School. All Rights Reserved.
            </div>
      </div>
    </div>
</body>
</html>
