<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fees.aspx.cs" Inherits="Fees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fee Management | Modern School</title>

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
        margin-left:250px;
        }
        .spacer1{
        margin-left:350px;
        }
    </style>
</head>
<body>

    <script type="text/javascript">
			
			function updatesum()
			{
				document.getElementById('total').value = (document.getElementById('tfee').value -0) + (document.getElementById('afee').value -0) + (document.getElementById('efee').value -0) + (document.getElementById('sfee').value -0) + (document.getElementById('lfee').value -0) + (document.getElementById('ifee').value -0) + (document.getElementById('ofee').value -0) + (document.getElementById('lcfee').value -0);
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
                 <a class="navbar-brand" href="Default.aspx"><img src="images/Meslogo.jpg" width="200" height="70" alt="logo"/></a>  
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
                    
              <h2>Fees Management</h2>
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">          
                </ul>
               <a href="Register.aspx"><i  class="fa fa-home fa-2x font-size:1em"></i></a> <h2 style="margin-left:20px;margin-top:5px;">Dashboard</h2>       
      </nav> <!--navbar-->
                     
        <div class="container">     
            <div class="spacer">
            <div class="form-group">              
                    <div class="col-sm-8">
                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">Roll Number</label></b>   
                                <asp:TextBox ID="roll" pattern='^[0-9]*' required class="form-control" placeholder="Roll Number" runat="server" OnTextChanged="roll_TextChanged"></asp:TextBox>                               
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
            <!--/.container (DON'T NEST) -->      
            
        <div class="container"> 
            <div class="spacer">
            <div class="form-group">               
                    <div class="col-sm-8">
                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label">Class</label></b>
                                
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
                                <b><label class="control-label">Division</label></b>
                                 
                                <asp:DropDownList ID="division" required class="form-control" runat="server" OnSelectedIndexChanged="division_SelectedIndexChanged">
                                    <asp:ListItem disabled Selected Value>--Select--</asp:ListItem>
                                    <asp:ListItem>Rose</asp:ListItem>
                                    <asp:ListItem>Mogra</asp:ListItem>
                                    <asp:ListItem>Lotus</asp:ListItem>
                                    <asp:ListItem>tulip</asp:ListItem>
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
                    <div class="col-sm-8">
                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label">Date</label></b>
                                <asp:TextBox ID="date" required class="form-control" placeholder="MM/DD/YYYY" runat="server" OnTextChanged="date_TextChanged"></asp:TextBox>
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label">School Name</label></b>
                                <asp:TextBox ID="scname" class="form-control" value="Modern English School" onkeypress="javascript:return false;" runat="server" OnTextChanged="scname_TextChanged"></asp:TextBox>  
                            </div>
                        </div>      
                        
                        </div>                        
                    </div>            
               </div>  
              </div>
        </div>
        <hr />
        <hr />
        
        <div class="container">     
            <div class="spacer1">
            <div class="form-group">              
                    <div class="col-sm-6">
                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">Tution Fee</label></b>
                                
                                <asp:TextBox ID="tfee" pattern='^[0-9]*' required class="form-control" onchange="updatesum()" runat="server" OnTextChanged="tfee_TextChanged"></asp:TextBox>   
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">Annual Fee</label></b>                                
                                <asp:TextBox ID="afee" pattern='^[0-9]*' required class="form-control" onchange="updatesum()" runat="server" OnTextChanged="afee_TextChanged"></asp:TextBox>
                            </div>                          
                        </div>                          
                    </div>            
                    </div>  
            </div>
            </div>
        </div>

        <div class="container">     
            <div class="spacer1">
            <div class="form-group">              
                    <div class="col-sm-6">
                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">Extra Curicular Fee</label></b>                                
                                <asp:TextBox ID="efee" pattern='^[0-9]*' required class="form-control" onchange="updatesum()" runat="server" OnTextChanged="efee_TextChanged"></asp:TextBox>
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">School Exam Fee</label></b>                               
                                <asp:TextBox ID="sfee" pattern='^[0-9]*' required class="form-control" onchange="updatesum()" runat="server" OnTextChanged="sfee_TextChanged"></asp:TextBox>
                            </div>                          
                        </div>                          
                        </div>            
                    </div>  
                </div>
            </div>
        </div>

        <div class="container">     
            <div class="spacer1">
            <div class="form-group">              
                    <div class="col-sm-6">
                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">Library Fee</label></b>                                
                                <asp:TextBox ID="lfee" pattern='^[0-9]*' required class="form-control" onchange="updatesum()" runat="server" OnTextChanged="lfee_TextChanged"></asp:TextBox>
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">I-Card Fee</label></b>                                
                                <asp:TextBox ID="ifee" pattern='^[0-9]*' required class="form-control" onchange="updatesum()" runat="server" OnTextChanged="ifee_TextChanged"></asp:TextBox>
                            </div>                          
                        </div>                          
                    </div>            
                    </div>  
            </div>
            </div>       
      </div>  
        
      <div class="container">     
            <div class="spacer1">
            <div class="form-group">              
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <b><label class="control-label" style="margin-top:10px;">Other Fees</label></b>                                      
                                    <asp:TextBox ID="ofee" pattern='^[0-9]*' class="form-control" onchange="updatesum()" runat="server" OnTextChanged="ofee_TextChanged"></asp:TextBox>
                                </div>
                            </div>                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <b><label class="control-label" style="margin-top:10px;">L.C Fee</label></b>
                                    <asp:TextBox ID="lcfee" pattern='^[0-9]*' class="form-control" onchange="updatesum()" runat="server" OnTextChanged="lcfee_TextChanged"></asp:TextBox>
                                </div>                          
                            </div>                          
                        </div>            
                    </div>  
            </div>
            </div>
        </div>  
            
        <div class="container">     
            <div class="spacer1">
                <div class="form-group">              
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <b><label class="control-label" style="margin-top:10px;">Total</label></b>                                    
                                    <asp:TextBox ID="total" class="form-control" required="true" onkeypress="javascript: return false;" runat="server" OnTextChanged="total_TextChanged"></asp:TextBox>
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
    </form>       

    <script>            
            $(document).ready(function(){
                var date_input=$('input[name="date"]'); //our date input has the name "date"
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
