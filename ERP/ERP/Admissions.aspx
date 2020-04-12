<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admissions.aspx.cs" Inherits="Admissions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Admissions | Modern School</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <link rel="shortcut icon" href="images/ico/MesIcon.jpg" />
    
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
            <span class="navbar-brand mb-0 h1">Admission Procedure (2019-20)</span>
        </nav>        
            
    <p><strong>Date: 4/02/2019</strong></p>
    <p>Modern School is pleased to inform that the&nbsp;admissions are open for class – I,II,III,IV. You can register for admission through the admission form link shared on the school website. Kindly note that the link is only for registration of Admission Form.</p>
    <p><strong>&nbsp<u>Timings&nbsp;</u></strong></p>
    <p><strong>&nbsp;</strong></p>
    <p><strong>&nbsp;<u>Admission form filling procedure for A/Y 2019-20</u></strong></p>
    <p><strong>&nbsp<u>Please use MOZILLA FIREFOX as a Browser to fill the form.</u></strong></p>
    <ul>
<li>Parents need to click on the link&nbsp;<u>(Admissions Tab –&gt; Apply Online –&gt; Particular class)</u>and Register with the Applicant / Child’s name, parent email id.</li>
<li>Once registered, you will get an email with the login id and password.</li>
<li>Fill all information correctly and submit the form.</li>
<li>Once the form is filled and submitted, you will get a Payment Button for Registration Fees. You will be required to pay the form fees of Rs. 300/- online ONLY. The Registration fee payment will be through Net Banking only.&nbsp;</li>
<li>Please note that the Registration will be&nbsp;<strong><u>COMPLETE ONLY AFTER THE FORM FEE PAYMENT.</u></strong></li>
</ul>
    <p><strong>&nbspANY FURTHER COMMUNICATION WILL BE COMMUNICATED TO YOUR REGISTERED E-MAIL.</strong></p>
    <p>&nbsp;</p>
    <p><strong>&nbsp; PROCEDURE FOR ONLINE REGISTRATION</strong></p>
    <table width="660">
<tbody>
<tr>
<td width="71">
<p><strong>&nbsp;</strong></p>
<p><strong>Step 1</strong></p>
</td>
<td width="194">
<p>&nbsp;</p>
<p>Admission Form &nbsp;</p>
</td>
<td width="396">
<p>The link for Online Admission Form is active on the website, using which parents will have to fill the Admission Form and pay registration fees (only online) of Rs. 300/- (mandatory).</p>
<p><strong>&nbsp;</strong></p>
<p><strong>IMPORTANT :&nbsp; Parents are requested not to make online payment of Rs. 300/-&nbsp; through ICICI bank as there is a &nbsp;technical issue regarding &nbsp;payment updation for this bank.</strong></p>
<p><strong>NOTE: – A mail will be sent to your registered email id for the date of </strong><strong>Student Interaction.</strong></p>
</td>
</tr>
<tr>
<td width="71">
<p><strong>Step&nbsp; 2</strong></p>
</td>
<td width="194">&nbsp;</td>
<td width="396">
<p>Schedule of documents uploading and school visit for admission confirmation will be informed by E-mail.</p>
</td>
</tr>
<tr>
<td width="71">
<p><strong>&nbsp;</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>Step 3</strong></p>
</td>
<td width="194">
<p>School Visit for Document Verification, Interaction, Payment of fees and Admission Confirmation</p>
</td>
<td width="396">
<p><u>Parents along with their ward</u> need to visit the school strictly adhering to the timings given in the SMS (Step 2) for the following- <br> a.&nbsp; Document Verification (Original &amp; Photocopies needed)</p>
<p>b. Payment of Fees (details given below) d.&nbsp; Confirmation of Admission</p>
</td>
</tr>
</tbody>
</table>
        </div>
    </form>
    <div class="jumbotron" style="background-color:teal; padding-top:10px;margin-bottom:0px;">
      <div class="container">
            <div class="col-sm-20" style="margin-top:10px;">
                &copy; <%: DateTime.Now.Year %> Ajinkya Kulkarni. All Rights Reserved.
            </div>             
      </div>
    </div>
</body>
</html>
