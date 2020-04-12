<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Student.aspx.cs" Inherits="View_Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>view | Modern School</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/popper.js"></script>
     <link rel="shortcut icon" href="images/ico/MesIcon.jpg" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"/>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg  navbar-dark" style="background-color:teal;">
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
           
                    <li>
                       <a class="nav-link" data-toggle="modal" data-target="#exampleModal">Logout <span class="sr-only">(current)</span></a>
                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Confirm Exit</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <div class="modal-body">
                                <strong>Are You Sure Want To Logout ?</strong>
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                <a href="Login.aspx"><button type="button" class="btn btn-primary">Yes</button></a>
                                </div>
                            </div>
                            </div>
                        </div>
                  </li> 
                </ul>                      
            </div>                 
            </nav> 
          
            <nav class="navbar navbar-expand-lg navbar-light bg-cyan" style="background-color:cyan;"> 
                    
                    <h2>Update Student Profile</h2>
                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">          
                    </ul>
                    <a href="Register1.aspx"><i  class="fa fa-home fa-2x font-size:1em"></i></a> <h2 style="margin-left:20px;margin-top:5px;">Dashboard</h2>       
            </nav> <!--navbar-->
        </div>
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
