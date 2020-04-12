<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register | Modern School</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/popper.js"></script>
     <link rel="shortcut icon" href="images/ico/MesIcon.jpg" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"/>
    
    <style>
        .icon-background 
        {
            color:#C51162;
        }
                
    </style>
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
                <a class="nav-link" href="Default.aspx">Home <span class="sr-only">(create)</span></a>
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

      <section id="services">
        <div class="container">
            <br /><br />
            <div class="row">
                <div class="col-md-12">
                    <div class="center gap">
                        <h2></h2>
                        <p></p>
                    </div>                
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="media">
                        <div class="pull-left">
                            <span class="fa-stack fa-4x">
                                <i class="fa fa-square fa-stack-2x icon-background" style="color:#EF5350;" aria-hidden="true"></i>
                                <a href="sregister.aspx" style="color:white;"><i class="fa fa-user-plus fa-stack-1x"></i></a>
                            </span>
                        </div>
                        <div class="media-body">
                            <a href="sregister.aspx"><h3 class="media-heading" style="color:#00ACC1;">Student Enrollment</h3></a>
                            <p>Addmit New Student In School Here.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6">
                    <div class="media">
                        <div class="pull-left">
                            <span class="fa-stack fa-4x">
                                <i class="fa fa-square fa-stack-2x icon-background" style="color:#7E548B;"></i>
                                <a href="Eregister.aspx" style="color:white;"><i class="fa fa-male fa-stack-1x"></i></a>
                            </span>
                        </div>
                        <div class="media-body">
                            <a href="Eregister.aspx"><h3 class="media-heading" style="color:#00ACC1;">Faculty Enrollment</h3></a>
                            <p>Add New Teacher In School Here.</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

                <div class="col-md-4 col-sm-6">
                    <div class="media">
                        <div class="pull-left">
                            <span class="fa-stack fa-4x">
                                <i class="fa fa-square fa-stack-2x icon-background" style="color:#0097A7;"></i>
                                <a href="Transport.aspx" style="color:white;"><i class="fa fa-bus fa-stack-1x"></i></a>
                            </span>
                        </div>
                        <div class="media-body">
                            <a href="Transport.aspx"><h3 class="media-heading" style="color:#00ACC1;">Maintain Transportation</h3></a>
                            <p>Maintain Trasportation Details Here.</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

               <div class="row form-group">
                   <p style="margin-top:20px;"></p>
                </div>
                <div class="row top-buffer"></div>
                
                <div class="col-md-4 col-sm-6">
                    <div class="media">
                        <div class="pull-left">
                            <span class="fa-stack fa-4x" style="margin-top:50px;">
                                <i class="fa fa-square fa-stack-2x icon-background" style="color:#245A64;"></i>
                                <a href="Fees.aspx" style="color:white;"><i class="fas fa-rupee-sign fa-stack-1x"></i></a>
                            </span>
                        </div>
                        <div class="media-body" style="margin-top:50px;">
                            <a href="Fees.aspx"><h3 class="media-heading" style="color:#00ACC1;">Student Fees</h3></a>
                            <p>Maintain Fee Information Here.</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

                <div class="col-md-4 col-sm-6">
                    <div class="media">
                        <div class="pull-left">
                            <span class="fa-stack fa-4x" style="margin-top:50px;">
                                <i class="fa fa-square fa-stack-2x icon-background" style="color:gray;"></i>
                                <a href="Certificate.aspx" style="color:white;"><i class="fas fa-user-graduate fa-stack-1x"></i></a>
                            </span>
                        </div>
                        <div class="media-body" style="margin-top:50px;">
                            <a href="Certificate.aspx"><h3 class="media-heading" style="color:#00ACC1;">Certificate Generation</h3></a>
                            <p>Generate Grade Certificate Of Student Here.</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

                <div class="col-md-4 col-sm-6">
                    <div class="media">
                        <div class="pull-left">
                            <span class="fa-stack fa-4x" style="margin-top:50px;">
                                <i class="fa fa-square fa-stack-2x icon-background" style="color:#795548;"></i>
                                <a href="Register1.aspx" style="color:white;"><i class="fas fa-wrench fa-stack-1x"></i></a>
                            </span>
                        </div>
                        <div class="media-body" style="margin-top:50px;">
                            <a href="Register1.aspx"><h3 class="media-heading" style="color:#00ACC1;">Settings</h3></a>
                            <p>View And Make Modification To Student And Faculty Profile</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

            </div>  <!--row-->
            
            </div>
         </section>
            
        </div>
    </form>

    <div class="fixed-bottom">
    <div class="jumbotron" style="background-color:teal; height:40px; margin-bottom:0px;">
      <div class="container">
            <div class="col-sm-15">
                &copy; <%: DateTime.Now.Year %> Ajinkya Kulkarni. All Rights Reserved.
            </div>
      </div>
    </div>
    </div>
</body>
</html>
