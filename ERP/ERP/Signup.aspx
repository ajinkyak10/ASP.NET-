<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup | Modern School</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <link rel="shortcut icon" href="images/ico/MesIcon.jpg" />
</head>
<body>
    <center>
    <form id="form1" runat="server">
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
           <li>
               <a class="nav-link" href="Login.aspx">Login <span class="sr-only">(current)</span></a>
          </li>    
            
        </ul> 
                     
        </div>                 
        </nav>
            <!-- Material form register -->
<div class="card" style="background-color:mediumturquoise; width:100%;">

    <h5 class="card-header info-color white-text text-center py-4">
        <strong>Sign up</strong>
    </h5>
    <br /><br>
    <!--Card content-->
    <div class="card-body px-lg-5 pt-0">

        <!-- Form -->
        <form class="text-center" style="color: #757575;">

            
            <div class="md-form mt-0">
                <div class="col-md-3">
			          <div class="col-md-offset-8">
                        <input type="email" id="materialRegisterFormEmail" class="form-control" placeholder="Enter Your Full Name">
                        
                    </div>
                </div>
            </div>
            <br><br />
            <!-- E-mail -->
            <div class="md-form mt-0">
                <div class="col-md-3">
			                 <div class="col-md-offset-8">
                <input type="email" id="" class="form-control">
                <label for="materialRegisterFormEmail">E-mail</label>
            </div>

            <!-- Password -->
            <div class="md-form">
                <input type="password" id="" class="form-control" aria-describedby="materialRegisterFormPasswordHelpBlock">
                <label for="materialRegisterFormPassword">Password</label>
                <small id="materialRegisterFormPasswordHelpBlock" class="form-text text-muted mb-4">
                    At least 8 characters
                </small>
            </div>                       

            <!-- Sign up button -->
            <button class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0" type="submit">Sign in</button>

            <!-- Social register -->
            <p>or sign up with:</p>
                      
            <a type="button" class="btn-floating btn-li btn-sm">
                <i class="fab fa-linkedin-in"></i>
            </a>
            <a type="button" class="btn-floating btn-git btn-sm">
                <i class="fab fa-github"></i>
            </a>

            <hr>

            <!-- Terms of service -->
            <p>By clicking
                <em>Sign up</em> you agree to our
                <a href="" target="_blank">terms of service</a>

        </form>
        <!-- Form -->

    </div>

</div>
<!-- Material form register -->
        </div>   
    </form>
    </center>
    <div class="jumbotron" style="background-color:teal; height:40px; margin-bottom:0px;">
      <div class="container">
            <div class="col-sm-15">
                &copy; <%: DateTime.Now.Year %> Modern School. All Rights Reserved.
            </div>
      </div>
    </div>
</body>
</html>
