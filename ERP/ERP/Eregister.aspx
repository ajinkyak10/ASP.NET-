﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Eregister.aspx.cs" Inherits="Eregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Faculty Registration | Modern School</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <link rel="shortcut icon" href="images/ico/MesIcon.jpg" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"/>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
    <link rel="stylesheet" href="student_css.css" />
    <script src="student_js.js"></script>
    <style>
        .spacer{
        margin-left:150px;
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
                    
              <h2>Faculty Registration Form</h2>
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">          
                </ul>
               <a href="Register.aspx"><i  class="fa fa-home fa-2x font-size:1em"></i></a> <h2 style="margin-left:20px;margin-top:5px;">Dashboard</h2>       
      </nav> <!--navbar-->
                       
        <div class="container">     
            <div class="spacer">
            <div class="form-group">              
                    <div class="col-sm-10">
                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">Registration Number</label></b>                                                              
                                <asp:TextBox ID="TextBox1" pattern='^[0-9]*' class="form-control" placeholder="Registration Number" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">Registration Date</label></b>                                                            
                                <asp:TextBox ID="date" required class="form-control" placeholder="MM/DD/YYYY" runat="server" OnTextChanged="date_TextChanged" EnableViewState="False"></asp:TextBox>
                            </div>                              
                        </div>                          
                        </div>                        
                    </div>            
               </div>  
              </div>
        </div>
            <!--/.container (DON'T NEST) -->      

        <div class="container"> 
            <div class="spacer">
            <div class="form-group">               
                    <div class="col-sm-10">
                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label">Date Of Issue</label></b>
                                <asp:TextBox ID="idate" required class="form-control" placeholder="MM/DD/YYYY" runat="server" OnTextChanged="idate_TextChanged"></asp:TextBox>
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label">School Name</label></b>
                                <asp:TextBox ID="scname" required class="form-control" value="Modern English School" onkeypress="javascript:return false;" runat="server" OnTextChanged="scname_TextChanged"></asp:TextBox>
                            </div>                              
                        </div>                          
                        </div>                        
                    </div>            
               </div>  
               </div>
        </div>

        <div class="container"> 
            <div class="spacer">
            <div class="form-group">               
                    <div class="col-sm-10">
                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label">Teaching Choice</label></b>
                                <asp:DropDownList ID="tchoice" required class="form-control" runat="server" OnSelectedIndexChanged="tchoice_SelectedIndexChanged">
                                    <asp:ListItem disabled Selected Value>--Select--</asp:ListItem>
                                    <asp:ListItem>Pre School</asp:ListItem>
                                    <asp:ListItem>Elementary</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label">Teacher Id</label></b>                            
                                <asp:TextBox ID="psname" pattern='^[0-9]*' class="form-control" runat="server" OnTextChanged="psname_TextChanged"></asp:TextBox>
                            </div>                              
                        </div>                          
                        </div>                        
                    </div>            
               </div>  
                </div>
        </div>

        <hr>
		<h2 style="margin-left:550px; font-family:Calibri; color:teal;">Personal Details</h2>		<!--SECOND HEADER-->
		<hr>

        <div class="container"> 
            <div class="spacer">
            <div class="form-group">               
                    <div class="col-sm-10">
                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group"> 
                                <b><label class="control-label">First Name</label></b>
                                <asp:TextBox ID="fname" pattern='[A-Za-z \\s]*' required class="form-control" placeholder="Faculty First Name" runat="server" OnTextChanged="fname_TextChanged"></asp:TextBox>
                            </div>                             
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group"> 
                                <b><label class="control-label">Middle Name</label></b>
                                <asp:TextBox ID="mname" pattern='[A-Za-z \\s]*' required class="form-control" placeholder="Faculty Middle Name" runat="server" OnTextChanged="mname_TextChanged"></asp:TextBox>
                            </div>                                                         
                        </div>    
                           
                        </div>                        
                    </div>            
               </div> 
              </div>  
        </div>

        <div class="container">  
            <div class="spacer">
            <div class="form-group">               
                    <div class="col-sm-10">
                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group"> 
                                <b><label class="control-label">Last Name</label></b>
                                <asp:TextBox ID="lname" pattern='[A-Za-z \\s]*' required class="form-control" placeholder="Faculty Last Name" runat="server" OnTextChanged="lname_TextChanged"></asp:TextBox>
                            </div> 
                        </div>    
                            
                        <div class="col-md-6">
                            <div class="form-group"> <!-- Date input -->
                                <b><label class="control-label" for="date">Date Of Birth</label></b>
                                <asp:TextBox ID="dob" required class="form-control" placeholder="MM/DD/YYYY" runat="server" OnTextChanged="dob_TextChanged"></asp:TextBox>
                            </div>                                                         
                        </div>                          
                        </div>                       
                    </div>            
               </div>                         
        </div>
        </div>

        <div class="container">   
            <div class="spacer">
            <div class="form-group">               
                    <div class="col-sm-10">
                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group"> 
                                <b><label class="control-label">Contact</label></b>
                                <div class="input-group mb-3">
                                  <div class="input-group-prepend">
                                    <div class="input-group-text" id="basic-addon1">+91</div>
                                  </div>
                                <asp:TextBox ID="contact" pattern='^[0-9]{10}$' required class="form-control" placeholder="10 Digit Mobile Number" MaxLength="10" runat="server" OnTextChanged="contact_TextChanged"></asp:TextBox>
                                </div>
                                </div>                             
                        </div>                            
                        <div class="col-md-6">
                         <div class="form-group">
                             <b><label class="control-label">Gender</label></b>

                             <div class="input-group">
                              <div class="input-group-prepend">
                                <div class="input-group-text">
                                <input type="radio" name="gender" required/>
                                </div>
                              </div>                              
                              <asp:TextBox ID="male" value="Male" class="form-control" onkeypress="javascript:return false;" required="true" runat="server" OnTextChanged="male_TextChanged"></asp:TextBox> 

                                <div class="input-group-prepend">
                                <div class="input-group-text">
                                <input type="radio" name="gender">
                                </div>
                              </div>                              
                              <asp:TextBox ID="female" value="Female" class="form-control" runat="server" onkeypress="javascript:return false;" required="true" OnTextChanged="female_TextChanged"></asp:TextBox>
                            </div>

                         </div> 

                            
                        </div>                        
                    </div>            
               </div>                           
        </div>
        </div>
        </div>

        <div class="container">    
            <div class="spacer">
            <div class="form-group">               
                    <div class="col-sm-10">
                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group"> 
                                <b><label class="control-label">Class</label></b>
                                
                                <asp:DropDownList ID="standard" required class="form-control" placeholder="Select" runat="server" OnSelectedIndexChanged="standard_SelectedIndexChanged">
                                    <asp:ListItem disabled Selected Value>--Select--</asp:ListItem>
                                    <asp:ListItem>First</asp:ListItem>
                                    <asp:ListItem>Second</asp:ListItem>
                                    <asp:ListItem>Third</asp:ListItem>
                                    <asp:ListItem>Four</asp:ListItem>
                                </asp:DropDownList>
                            </div>                             
                        </div> 
                            
                        <div class="col-md-6">
                            <div class="form-group"> 
                                <b><label class="control-label">Upload Image</label></b>
                                <div class="input-group">
                                <span class="input-group-btn">
                                    <span class="btn btn-default btn-file">
                                        Browse… <input type="file" id="imgInp">
                                    </span>
                                </span>                                
                                <input type="text" class="form-control" readonly/>
                                </div>
                            </div>                                                         
                        </div>    
                           
                        </div>                        
                    </div>            
               </div>   
                </div>
        </div>

        <div class="container">     
            <div class="spacer">
            <div class="form-group">               
                    <div class="col-sm-10">
                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group"> 
                                <b><label class="control-label">Local Address</label></b>                   
                                <asp:TextBox ID="ladd" pattern="^[a-zA-Z0-9_.-]*$" class="form-control" rows="4" style="margin-top:10px" TextMode="MultiLine" runat="server" OnTextChanged="ladd_TextChanged"></asp:TextBox>
                            </div>                             
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group"> 
                                <b><label class="control-label">Permanent Address</label></b>
                                <asp:TextBox ID="padd" pattern="^[a-zA-Z0-9_.-]*$" TextMode="MultiLine" class="form-control" rows="4" style="margin-top:10px" runat="server" OnTextChanged="padd_TextChanged" required></asp:TextBox>
                            </div>                                                         
                        </div>    
                            
                        </div>                        
                    </div>            
               </div>    
                </div>
        </div>
       
	    <div class="col-md-12 text-center">
		    <div class="col-md-offset-6">			    
                <asp:Button ID="submit" class="btn btn-success btn-lg"  style="margin-bottom:20px;" runat="server" Text="SUBMIT" OnClick="submit_Click" />
		    </div>
        </div>

        </div>
    </form>

    <script>            
            $(document).ready(function(){
                var date_input = $('input[name="date"]'); //our date input has the name "date"                
                var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
                date_input.datepicker({
                    format: 'mm/dd/yyyy',
                    container: container,
                    todayHighlight: true,
                    autoclose: true,
                })
            })
    </script>

     <script>            
            $(document).ready(function(){         
                var date_input = $('input[name="idate"]'); //our date input has the name "idate"              
                var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
                date_input.datepicker({
                    format: 'mm/dd/yyyy',
                    container: container,
                    todayHighlight: true,
                    autoclose: true,
                })
            })
    </script>

     <script>            
            $(document).ready(function(){               
                var date_input = $('input[name="dob"]');
                var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
                date_input.datepicker({
                    format: 'mm/dd/yyyy',
                    container: container,
                    todayHighlight: true,
                    autoclose: true,
                })
            })
    </script>

    <div class="jumbotron" style="background-color:teal; height:40px; margin-bottom:0px;">
      <div class="container">
            <div class="col-sm-15">
                &copy; <%: DateTime.Now.Year %> Modern School. All Rights Reserved.
            </div>
      </div>
    </div>

</body>
</html>
