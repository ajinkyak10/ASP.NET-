<%@ Page Language="C#" AutoEventWireup="true" CodeFile="header.aspx.cs" Inherits="header" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
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
                 <a class="navbar-brand" href="Default.aspx"><img src="images/Meslogo.jpg" width=200 height=70 alt="logo"></a>  
           </li>
        </ul>
        <ul class="navbar-nav ml-auto">
           <li class="nav-item active">
                <a class="nav-link" href="Default.aspx">Home <span class="sr-only">(current)</span></a>
           </li>
           <li>
               <a class="nav-link" href="#">Register <span class="sr-only">(current)</span></a>
           </li>                  
          <li>
               <a class="nav-link" href="Default.aspx">Logout <span class="sr-only">(current)</span></a>
          </li>             
        </ul> 
                     
  </div>                 
</nav>
        </div>
    </form>
</body>
</html>
