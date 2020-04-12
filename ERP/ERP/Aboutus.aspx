<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="Aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us | Modern School</title>
        <link rel="shortcut icon" href="images/ico/MesIcon.jpg" />
        <link href="Content/bootstrap.css" rel="stylesheet" />
        <script src="Scripts/bootstrap.min.js"></script>
        <script src="Scripts/jquery-3.0.0.min.js"></script>
        <script src="Scripts/popper.min.js"></script>
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
        <nav class="navbar navbar-light bg-cyan" style="background-color:cyan;">
            <span class="navbar-brand mb-0 h1" style="text-align:center;">Head Of School's Message</span>
        </nav>        
            <i class="fa fa-quote-left fa-2x fa-pull-left fa-border"></i>Welcome to the Modern School, a ten-year-old school deeply rooted in a thousand-year-old city.</p>

            Every major world religion and most modern languages are represented within our community and spoken on our campus. We are a village of people from over 50 countries, with one educator for every six students. So, what holds this world of plurality together? It is our community's drive to fulfill our mission.</p>
                <img src="images/teacher.jpg" style="margin: 10px 20px 10px 20px; float: left;" width="500" alt="Teacher reading to students"/>
            
            <p>Teacher reading to students. The Modern School is a mission-driven international school in Pune. We know who we are, we know what we have committed ourselves to. With authenticity and enthusiasm, we endeavor to keep the promise set forth in our Mission Statement: to inspire all of our students to continuous inquiry, empowering them with the skills, courage, optimism, and integrity to pursue their dreams and enhance the lives of others.</p>

            <p>Today, ASB is a vanguard school in 21st-century education. It is a community of children and adults encouraged to take risks and stand tall when faced with adversity. It is a place where we care about each other and where we try to make a difference in our world. It is an international school where inquiry, empowerment, dreaming, and service are framed with joy.</p>

            <p>The French scholar, Romain Rolland, wrote in 1929, "If there is one place on the face of earth where all the dreams of living men have found a home...it is India." I agree, and I like to believe the same about ASB. After all, what better place for dreams to find a home than a school?</p>

            <p>It is my privilege and honor to serve this community. I hope you and your family see India, Mumbai, and ASB as I do, through Rolland's lens — as a home for your dreams.</p><i class="fa fa-quote-right fa-2x fa-pull-left fa-border"></i>
            <p>Craig Johnson - Modern School </p>
            
        </div>
    </form>
    <div class="jumbotron" style="background-color:teal; height:40px; margin-bottom:0px;">
      <div class="container">
            <div class="col-sm-15">
                &copy; <%: DateTime.Now.Year %> Ajinkya Kulkarni. All Rights Reserved.
            </div>
      </div>
    </div>
</body>
</html>
