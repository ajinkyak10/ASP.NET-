<%@ Page Language="C#" MasterPagefile="~/school.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">    
        <link href="Content/bootstrap.css" rel="stylesheet" />
        <script src="Scripts/bootstrap.min.js"></script>
        <script src="Scripts/jquery-3.0.0.min.js"></script>
        <script src="Scripts/popper.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ul class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ul>

      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="images/slider/bg2.JPG" height="600" width="200" alt="First slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="images/slider/bg1.jpg" height="600" width="200" alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="images/slider/2017-01-19-SW-Perspective-NEW-NAME.jpg" height="600" width="200" alt="Third slide">
        </div>
      </div>

      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
   </div>

</asp:Content>
