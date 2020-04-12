<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Certificate.aspx.cs" Inherits="Certificate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Certificate | Modern School</title>
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
        margin-left:320px;
        }
        .spacer1{
        margin-left:350px;
        }
        .spacer2{
        margin-left:440px;
        }
    </style>
</head>
<body>

    <script type="text/javascript">
	
			function updatesum()
            {
                var total1 = document.getElementById('total').value / 6;
                var avg1 = (Math.round(total1 * 100) / 100).toFixed(2);

                document.getElementById('total').value = (document.getElementById('mar').value - 0) + (document.getElementById('sci').value - 0) + (document.getElementById('hist').value - 0) + (document.getElementById('geo').value - 0) + (document.getElementById('math').value - 0) + (document.getElementById('eng').value - 0); 
                document.getElementById('avg').value = avg1;
                                				
                if (avg1 > 70 && avg1 <= 100) {
                    document.getElementById('grade').value = "DISTINCTION";
                    document.getElementById('result').value = "PASS";
                }
                else if (avg1 > 60 && avg1 <= 70) {
                    document.getElementById('grade').value = "FIRST CLASS";
                    document.getElementById('result').value = "PASS";
                }
                else if (avg1 > 50 && avg1 <= 60) {
                    document.getElementById('grade').value = "HIGHER SECOND CLASS";
                    document.getElementById('result').value = "PASS";
                }
                else if (avg1 > 40 && avg1 <= 50) {
                    document.getElementById('grade').value = "SECOND CLASS";
                    document.getElementById('result').value = "PASS";
                }
                else if (avg1 > 30 && avg1 <= 40) {
                    document.getElementById('grade').value = "THIRD CLASS";
                    document.getElementById('result').value = "PASS";
                }
                else {
                    document.getElementById('grade').value = "NA";
                    document.getElementById('result').value = "FAIL";
                }
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
                <h2>Student Certificate</h2>
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">          
                </ul>
                <a href="Register.aspx"><i  class="fa fa-home fa-2x font-size:1em"></i></a> <h2 style="margin-left:20px;margin-top:5px;">Dashboard</h2>       
            </nav> <!--navbar-->

            <div class="container">     
                <div class="spacer">
                <div class="form-group">              
                    <div class="col-sm-10">
                        <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">Roll Number</label></b>                                
                                <asp:TextBox ID="roll" pattern='^[0-9]*' class="form-control" placeholder="Roll Number" runat="server" OnTextChanged="roll_TextChanged" required="true"></asp:TextBox>
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">Student Name</label></b>                               
                                <asp:TextBox ID="sname" pattern='[A-Za-z \\s]*' class="form-control" placeholder="Student Full Name" runat="server" OnTextChanged="sname_TextChanged"></asp:TextBox>
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
                        <div class="col-md-4">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">Result Date</label></b>                                 
                                 <asp:TextBox ID="date" class="form-control" placeholder="MM/DD/YYYY" runat="server" OnTextChanged="date_TextChanged"></asp:TextBox>
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">School Name</label></b>                                  
                                <asp:TextBox ID="scname" required="true" class="form-control" value="Modern English School" onkeypress="javascript:return false;" runat="server" OnTextChanged="scname_TextChanged"></asp:TextBox>
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
                        <div class="col-md-4">
                            <div class="form-group">
                                <b><label class="control-label">Class</label></b>
                                  
                                <asp:DropDownList ID="standard" class="form-control" runat="server" OnSelectedIndexChanged="standard_SelectedIndexChanged">
                                    <asp:ListItem disabled Selected Value>--Select--</asp:ListItem>
                                    <asp:ListItem>First</asp:ListItem>
                                    <asp:ListItem>Second</asp:ListItem>
                                    <asp:ListItem>Third</asp:ListItem>
                                    <asp:ListItem>Four</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>                            
                        <div class="col-md-4">
                            <div class="form-group">
                                <b><label class="control-label">Division</label></b>
                                
                                <asp:DropDownList ID="division" class="form-control" runat="server" OnSelectedIndexChanged="division_SelectedIndexChanged">
                                    <asp:ListItem disabled Selected Value>--Select--</asp:ListItem>
                                    <asp:ListItem>Rose</asp:ListItem>
                                    <asp:ListItem>Mogara</asp:ListItem>
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

        <hr>
			<h3 style="margin-left:480px; font-family:Calibri; color:teal;">Enter Following Marks Details</h3>
		</hr>
        <hr />
        
        <div class="container">     
            <div class="spacer1">
            <div class="form-group">              
                    <div class="col-sm-6">
                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">Marathi</label></b>                                
                                <asp:TextBox ID="mar" pattern='^[0-9]*' class="form-control" onchange="updatesum()" runat="server" OnTextChanged="mar_TextChanged"></asp:TextBox>
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">Science</label></b>                                
                                <asp:TextBox ID="sci" pattern='^[0-9]*' class="form-control" onchange="updatesum()" runat="server" OnTextChanged="sci_TextChanged"></asp:TextBox>
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
                                <b><label class="control-label" style="margin-top:10px;">History</label></b>                                
                                <asp:TextBox ID="hist" pattern='^[0-9]*' class="form-control" onchange="updatesum()" runat="server" OnTextChanged="hist_TextChanged"></asp:TextBox>
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">Geography</label></b>                                
                                <asp:TextBox ID="geo" pattern='^[0-9]*' class="form-control" onchange="updatesum()" runat="server" OnTextChanged="geo_TextChanged"></asp:TextBox>
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
                                <b><label class="control-label" style="margin-top:10px;">Mathematics</label></b>                                
                                <asp:TextBox ID="math" pattern='^[0-9]*' class="form-control" onchange="updatesum()" runat="server" OnTextChanged="math_TextChanged"></asp:TextBox>
                            </div>
                        </div>                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <b><label class="control-label" style="margin-top:10px;">English</label></b>                                
                                <asp:TextBox ID="eng" pattern='^[0-9]*' class="form-control" onchange="updatesum()" runat="server" OnTextChanged="eng_TextChanged"></asp:TextBox>
                            </div>                          
                        </div>                          
                    </div>            
                    </div>  
            </div>
            </div>
        </div>
        
        <div class="container">     
            <div class="spacer2">
                <div class="form-group">              
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <b><label class="control-label" style="margin-top:10px;">Total</label></b>                                    
                                    <asp:TextBox ID="total" required="true" class="form-control" onkeypress="javascript:return false;" runat="server" OnTextChanged="total_TextChanged"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">     
            <div class="spacer2">
                <div class="form-group">              
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <b><label class="control-label" style="margin-top:10px;">Average %</label></b>                                    
                                    <asp:TextBox ID="avg" required="true" class="form-control" onkeypress="javascript:return false;" runat="server" OnTextChanged="avg_TextChanged"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">     
            <div class="spacer2">
                <div class="form-group">              
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <b><label class="control-label" style="margin-top:10px;">Grade</label></b>
                                    <asp:TextBox ID="grade" required="true" class="form-control" onkeypress="javascript:return false;" runat="server" OnTextChanged="grade_TextChanged"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">     
            <div class="spacer2">
                <div class="form-group">              
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <b><label class="control-label" style="margin-top:10px;">Result</label></b>
                                    <asp:TextBox ID="result" class="form-control" onkeypress="javascript:return false;" required="true" runat="server" OnTextChanged="result_TextChanged"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-12">
		    <div class="col-md-offset-6">		
                <asp:Button ID="submit" class="btn btn-success btn-lg" style="margin-bottom:20px; margin-left:500px;" runat="server" Text="SUBMIT" OnClick="submit_Click" />
                <asp:Button ID="pdf" class="btn btn-success btn-lg" style="margin-bottom:20px; margin-left:100px;" runat="server" Text="SAVE PDF" OnClick="pdf_Click"/>
            </div>
        </div>

        <div class="col-md-12 text-center">
		    <div class="col-md-offset-6">		
            </div>
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

    <div class="jumbotron" style="background-color:teal; height:40px;">
      <div class="container">
            <div class="col-sm-15">
                &copy; <%: DateTime.Now.Year %> Modern School. All Rights Reserved.
            </div>
      </div>
    </div>

    <script>
		$(document).ready(function(){
						$('#msg').fadeOut(10000);
			
		});
	</script>
</body>
</html>
