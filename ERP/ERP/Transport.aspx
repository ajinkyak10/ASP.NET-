<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transport.aspx.cs" Inherits="Transport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Transport | Modern School</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <link rel="shortcut icon" href="images/ico/MesIcon.jpg" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"/>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

    <style>
        .spacer{
        margin-left:150px;
        }
    </style>

</head>
<body>

    <script type="text/javascript">

        function distance()
        {
            document.getElementById('fare').value = (document.getElementById('dist').value - 0) * 14 * 30;
        }

    </script>
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
                    
              <h2>Transport Allocation</h2>
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
                                <b><label class="control-label" style="margin-top:10px;">Route Code</label></b>
                                <asp:TextBox ID="rcode" pattern='^[a-zA-Z0-9]+$' required class="form-control" placeholder="Route Code" runat="server" OnTextChanged="rcode_TextChanged"></asp:TextBox>
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" required style="margin-top:10px;">Destination</label></b>
                                <asp:TextBox ID="dest" pattern='[A-Za-z \\s]*' required class="form-control" placeholder="Destination" runat="server" OnTextChanged="dest_TextChanged"></asp:TextBox>
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
                                <b><label class="control-label" style="margin-top:10px;">Roll Number</label></b>
                                <asp:TextBox ID="roll" pattern='^[0-9]*' required class="form-control" placeholder="Student Roll Number" runat="server" OnTextChanged="roll_TextChanged"></asp:TextBox>
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">Student Name</label></b>
                                <asp:TextBox ID="sname" pattern='[A-Za-z \\s]*' required class="form-control" placeholder="Student Full Name" runat="server" OnTextChanged="sname_TextChanged"></asp:TextBox>
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
                                <b><label class="control-label" style="margin-top:10px;">Class</label></b>
                                
                                <asp:DropDownList ID="standard" required class="form-control" runat="server" OnSelectedIndexChanged="standard_SelectedIndexChanged">
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
                                <b><label class="control-label" style="margin-top:10px;">Division</label></b>
                                
                                <asp:DropDownList ID="division" required class="form-control" runat="server" OnSelectedIndexChanged="division_SelectedIndexChanged">
                                    <asp:ListItem disabled Selected Value>--Select--</asp:ListItem>
                                    <asp:ListItem>Rose</asp:ListItem>
                                    <asp:ListItem>Mogra</asp:ListItem>
                                    <asp:ListItem>Lotus</asp:ListItem>
                                    <asp:ListItem>Tulip</asp:ListItem>
                                </asp:DropDownList>
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
                                <b><label class="control-label" style="margin-top:10px;">From Date</label></b>                  
                                <asp:TextBox ID="sdate" required class="form-control" placeholder="MM/DD/YYYY" runat="server" OnTextChanged="sdate_TextChanged"></asp:TextBox>
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">To Date</label></b>                           
                                <asp:TextBox ID="edate" required class="form-control" placeholder="MM/DD/YYYY" runat="server" OnTextChanged="edate_TextChanged"></asp:TextBox>
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
                                <b><label class="control-label" style="margin-top:10px;">Distance(Home To School)</label></b>   
                                <asp:TextBox ID="dist" pattern='^[0-9]*' required class="form-control" placeholder="Distance in KM" onchange="distance()" runat="server" OnTextChanged="dist_TextChanged"></asp:TextBox>
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" required style="margin-top:10px;">Total Fare (Monthly)</label></b>
                                <asp:TextBox ID="fare" ReadOnly required class="form-control" placeholder="" runat="server" OnTextChanged="fare_TextChanged"></asp:TextBox>
                            </div>                              
                        </div>                          
                        </div>                        
                    </div>            
               </div>  
              </div>
        </div>

        <div class="col-md-12 text-center">
		    <div class="col-md-offset-6">
                <asp:Button ID="submit" class="btn btn-success btn-lg" style="margin-bottom:20px;" runat="server" Text="SUBMIT" OnClick="submit_Click" />
		    </div>
        </div>

        </div>
    </form>

    <script>            
            $(document).ready(function(){
                var date_input = $('input[name="sdate"]'); //our date input has the name "date"                
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
                var date_input=$('input[name="edate"]'); //our date input has the name "date"
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
