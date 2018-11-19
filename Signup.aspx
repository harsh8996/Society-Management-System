<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app>
<head runat="server">
   <meta charset="utf-8"/>
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width" />
<title>SignUp</title>
    <script src="scripts/angular.js"></script>
<!-- CSS Files-->
<link rel="stylesheet" href="stylesheets/style.css" />
<link rel="stylesheet" href="stylesheets/skins/blue.css" />
<!-- skin color -->
<link rel="stylesheet" href="stylesheets/responsive.css" />
    <script>
function Ctrl($scope) {
  $scope.pattern = /^[a-z]+[a-z0-9._]+@[a-z]+\.[a-z.]{2,5}$/;
}
</script>
</head>
<body>
    <form runat="server">
    <div id="panel">
	<div class="row">
		<div class="twelve columns">
			<!-- <img src="http://www.wowthemes.net/demo/studiofrancesca/images/info.png" class="pics" alt="info"> -->
			<div class="infotext">
				<!--  Thank you for visiting my theme! Replace this with your message to visitors. -->
				Phone: +91-9099499731 | Mail:swaminarayanPark@info.com
                <a style="float:right" href="Display_queries.aspx" id="query" runat="server">Queries</a>
				<a style="float:right" href="Login.aspx" id="login" runat="server">Login</a>
                <a style="float:right" href="Signup.aspx" runat="server" id="signup">SignUp</a>
                <a style="float:right" href="Add_News.aspx" runat="server" id="news">Add News</a>
                 <asp:DropDownList ID="dropdown" runat="server" style="border: 2px solid #7d6754; border-radius: 5px; padding: 3px; -webkit-appearance: none; background-image: url('http://localhost:57735/images/menu-icon.png'); background-position: 125px; background-repeat: no-repeat; text-indent: 0.01px; text-overflow: ''; ; width: 150px; float: right;" AutoPostBack="true" OnSelectedIndexChanged="dropdown1_SelectedIndexChanged">
                     <asp:ListItem>--Select--</asp:ListItem>   
                     <asp:ListItem>Personal Information</asp:ListItem> 
                        <asp:ListItem>Change Password</asp:ListItem>
                        <asp:ListItem>Logout</asp:ListItem>
                    </asp:DropDownList>
		
			</div>
		</div>
	</div>
</div>
<p class="slide">
	<a href="#" class="btn-slide"></a>
</p>
<!-- HEADER
================================================== -->
	<div class="row">

	<div class="headerlogo four columns" >
	
	 <!--   <div id="header" style=" font-family:Georgia">
                    <div class="fl_left" style="display:block; float:left; margin-top:7px; overflow:hidden;">
                        <h1 style="display:block; float:left; margin-top:7px; overflow:hidden;">
                         <strong style="font-weight:normal; color:#059BD8; background-color:#FFFFFF;">Swaminarayan park</strong>
						  
						  <strong style="font-weight:normal; color:#059BD8; background-color:#FFFFFF;">2</strong></h1>
                       
                    </div>     
                </div>  -->
         	
	 <!-- 
                    <div class="fl_left" style="display:block; float:left; overflow:hidden;" >
                        <h3 style="display:block; float:left; overflow:hidden;  font-family:Georgia; margin-top:50px">
                         <strong style="font-weight:normal; color:#059BD8; background-color:#FFFFFF;">Swaminarayan Park</strong>
						 <strong style="font-weight:normal; color:#059BD8; background-color:#FFFFFF;">2</strong></h3>
                       #2ba6cb   #333
                    </div> -->
                    <!-- <h4><strong style="font-weight:normal; color:#059BD8; background-color:#FFFFFF;">Swaminarayan Park</strong>  </h4> -->
                    
                

			<div class="logo">
			<a href="Home.aspx">
			 <h3 style=" font-family:Georgia ;color:#2ba6cb">
			 <strong>Swaminarayan Park  </strong>
			 </h3> 
			</a>
		</div>
	</div>
	<div class="headermenu eight columns noleftmarg">
		<nav id="nav-wrap">
		<ul id="main-menu" class="nav-bar sf-menu">
			<li class="current">
			<a href="Home.aspx">Home</a>
			<!-- <ul>
				<li><a href="index2.html">Without slider</a></li>
			</ul> -->
			</li>
			<li>
			<a href="#">Service</a>
			 <ul>
				<li><a href="Bill_Account.aspx">Billing & Accounting</a></li>
				<!-- <li><a href="portofolio2.html">Billing & Accounting</a></li> -->
				<li><a href="Complain.aspx">Complain Box</a></li>
				<!-- <li><a href="portofolio4.html">Data Management</a></li> -->
				<!-- <li><a href="portofoliodetail.html">Project Details</a></li> -->
			</ul>
			 </li>
			<li>
			<a href="Data_Manage.aspx">Data Management</a>
			<!-- <ul>
				<li><a href="blogpage1.html">Blog page style 1</a></li>
				<li><a href="blogpage2.html">Blog page style 2</a></li>
				<li><a href="blogpage3.html">Blog page style 3</a></li>
				<li><a href="blogsinglepost.html">Single post</a></li>
			</ul> -->
			</li>
			<li>
			<a href="Blog.aspx">Blog</a>
			<!-- <ul>
				<li><a href="about.html">About us</a></li>
				<li><a href="services.html">Services</a></li>
			</ul> -->
			</li>
			<li>
			<a href="About.aspx">About Us</a>
			<!-- <ul>
				<li><a href="columns.html">Columns</a></li>
				<li><a href="elements.html">Elements</a></li>
				<li><a href="typography.html">Typography</a></li>
			</ul> -->
			</li>
			<li>
			<a href="Contact.aspx">Contact Us</a>
			</li>
		</ul>
		</nav>
	</div>
</div>
<div class="clear">
</div><div id="subheader">
	<div class="row">
		<div class="twelve columns">
			<p class="left">SIGN UP</p>
            <p class="right">
                <asp:Label ID="label1" runat="server"></asp:Label>
            </p>
			
		</div>
	</div>
</div>

<div class="wrapcontact">
	 <div class="done">
				<div class="alert-box success">
				 Message has been sent! <a href="#" class="close">x</a>
				</div>
			</div>			
				<div class="form" style="width:350px;margin-left:20%">
				    
					<h3>Member Login</h3>
					<h4>Flat Details:</h4>
					
					<label>Flat No</label>
                        <asp:TextBox id="txt_flat_no" runat="server" class="smoothborder" ng-required="true"></asp:TextBox>
					<h4>Personal Details:</h4>
					
					<label>Full Name</label>
                        <asp:TextBox runat="server" id="txt_full_name" class="smoothborder" ng-required="true"></asp:TextBox>
					<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Numeric does not allow" ControlToValidate="txt_full_name" ForeColor="Red" ValidationExpression="[a-zA-Z]*"></asp:RegularExpressionValidator>
                    <label>Password</label>
                        <asp:TextBox runat="server" id="txt_password" ng-model="new" class="smoothborder" TextMode="Password" ng-required="true"></asp:TextBox>
					<br />
                    <label>Confirm Password</label>
                        <asp:TextBox class="smoothborder" id="txt_confirm_password" ng-model="confirm" TextMode="Password" runat="server" ng-required="true"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match" ControlToValidate="txt_confirm_password" ControlToCompare="txt_password" ForeColor="Red"></asp:CompareValidator>
                    <!--<span ng-show="new!=confirm" style="color:red">Confirm password must be same as password</span>-->
					<label>Email Id</label>
                        <asp:TextBox runat="server" id="txt_email_id" ng-model="eee" class="smoothborder" ng-required="true"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_email_id" runat="server" ErrorMessage="Email-id invalid"></asp:RegularExpressionValidator>
					<label>Date of Birth</label>
                        <asp:TextBox runat="server" id="txt_dob" Enabled="false" ng-required="true" class="smoothborder" Style="width:250px;float:left"></asp:TextBox>
                    <asp:Button runat="server" ID="Button1" CausesValidation="false" Style="float:right" Text="Select Date" />
                        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" Format="dd/MM/yyyy" runat="server" TargetControlID="txt_dob" PopupButtonID="Button1"  />
                        <ajaxToolkit:ToolkitScriptManager ID="ScriptManager1" runat="server">
                        </ajaxToolkit:ToolkitScriptManager>
                    <br /><br /><br />
					<label>Mobile No</label>
                        <asp:TextBox runat="server" id="txt_mobile" ng-required="true" TextMode="Number"  class="smoothborder" ></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Mobile no is not valid" ControlToValidate="txt_mobile" OnServerValidate="mobile" ForeColor="Red"></asp:CustomValidator>
                    <label>Alternative Mobile No</label>
                        <asp:TextBox runat="server" id="txt_alt_mobile" ng-required="true" TextMode="Number" class="smoothborder" />
					<asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Mobile no is not valid" ControlToValidate="txt_alt_mobile" OnServerValidate="mobile" ForeColor="Red"></asp:CustomValidator>
                    <label>Gender</label>
                        <asp:RadioButtonList runat="server" id="radio" RepeatDirection="Horizontal" BorderStyle="None">
                        <asp:ListItem runat="server" Text="Male" Selected />
                        <asp:ListItem runat="server" Text="Female" />
                         </asp:RadioButtonList>
                     <label>Occupation</label>
                        <asp:TextBox runat="server" id="occupation" ng-required="true" class="smoothborder" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Numeric does not allow" ControlToValidate="occupation" ForeColor="Red" ValidationExpression="[a-zA-Z]*"></asp:RegularExpressionValidator>
                    <label>Member</label>
                        <asp:RadioButtonList runat="server" id="rent" RepeatDirection="Horizontal" BorderStyle="None">
                        <asp:ListItem runat="server" Text="Owner" Selected />
                        <asp:ListItem runat="server" Text="Rent" />
                         </asp:RadioButtonList>
					<h4>Vehicle Details:</h4>
					
					<label>No of Two wheelers</label>
                        <asp:TextBox runat="server" id="txt_no_two" TextMode="Number"  min="0" max="10" ng-required="true" class="smoothborder"></asp:TextBox>
                        <label>No of Four Wheelers</label>
                        <asp:TextBox runat="server" id="txt_no_four" ng-required="true" min="0" max="10" TextMode="Number" class="smoothborder"></asp:TextBox>
					<label>Vehicle No</label>
                        <asp:TextBox class="smoothborder" id="txt_vehicle_no" TextMode="Number" min="0" ng-required="true" runat="server" ></asp:TextBox>
					<label>Member Type</label>
                        <asp:DropDownList runat="server" id="type_member">
                            <asp:ListItem Text="Member"></asp:ListItem>
                            <asp:ListItem Text="Comittee Member"></asp:ListItem>
                            <asp:ListItem Text="Secretary"></asp:ListItem>
                            <asp:ListItem Text="Chairman"></asp:ListItem>
                        </asp:DropDownList>
                    <asp:Label runat="server" Text="Upload Customer Docs"></asp:Label>
            <asp:FileUpload runat="server" ID="docs" />
					<br/><br/>
                        <asp:Button runat="server" id="submit" class="readmore" Text="Submit" onClick="Add" />&nbsp;
                        <asp:Button runat="server" id="reset" class="readmore" Text="Reset" onClick="Reset" /> &nbsp;
					<br/>
					<hr />
					
					<br/>			
				</div>

    </div>
<!-- FOOOTER 
================================================== -->
<div id="footer">
	<footer class="row">
	<p class="back-top floatright">
		<a href="#top"><span></span></a>
	</p>
	 <div class="four columns" >
	 
	    <a href="Home.aspx" style="hoverIntent:background-color:red"> <h1>Home</h1> </a>
		<a href="Data_Manage.aspx"> <h1>Data Management</h1> </a>
		<a href="About.aspx"> <h1>About Us</h1> </a>
		<a href="Contact.aspx"> <h1>Contact Us</h1> </a>	
		
	</div> 
	<div class="four columns">
		<h1>GET SOCIAL</h1>
		<a class="social facebook" href="#"></a>
		<a class="social twitter" href="#"></a>
		<a class="social deviantart" href="#"></a>
		<!-- <a class="social flickr" href="#"></a>
		<a class="social dribbble" href="#"></a> -->
		
	</div>
	<div class="four columns">
		<img src="images\1b.jpg" alt="image01" class="responsiveslide" style="height:70px;width:100px" />
		<img src="images\6b.jpg" alt="image01" class="responsiveslide" style="height:70px;width:100px" /><br />
		<img src="images\9b.jpg" alt="image01" class="responsiveslide" style="height:70px;width:100px" />
		<img src="images\10b.jpg" alt="image01" class="responsiveslide" style="height:70px;width:100px" />

		<!-- <div class="row collapse newsletter floatright">
			 <div class="ten mobile-three columns">
				<input type="text" class="nomargin" placeholder="Enter your e-mail address...">
			</div>
			<div class="two mobile-one columns">
				<a href="#" class="postfix button expand">GO</a>
			</div> 
		</div>  --> 
	</div>
	</footer>
</div>
<div class="copyright">
	<div class="row">
		<div class="six columns">
			 &copy;<span class="small"> Copyright 2017 Super 3</span>
		</div>
		<div class="six columns">
			<span class="small floatright"> Design by <a href="www.wowthemes.net">Super 3</a></span>
		</div>
	</div>
</div>
<!-- JAVASCRIPTS 
================================================== -->
<!-- Javascript files placed here for faster loading 
<script src="foundation.min.js.download"></script>   
<script src="./Studio Francesca - Premium Theme by WowTjquery.easing.1.3.js.download"></script>
<script src="./Studio Francesca - Premium Theme by WowThemes.net_files/elasticslideshow.js.download"></script>
<script src="./Studio Francesca - Premium Theme by WowThemes.net_files/jquery.carouFredSel-6.0.5-packed.js.download"></script>
<script src="./Studio Francesca - Premium Theme by WowThemes.net_files/jquery.cycle.js.download"></script>
<script src="./Studio Francesca - Premium Theme by WowThemes.net_files/app.js.download"></script>
<script src="./Studio Francesca - Premium Theme by WowThemes.net_files/modernizr.foundation.js.download"></script>
<script src="./Studio Francesca - Premium Theme by WowThemes.net_files/slidepanel.js.download"></script>
<script src="./Studio Francesca - Premium Theme by WowThemes.net_files/scrolltotop.js.download"></script>
<script src="./Studio Francesca - Premium Theme by WowThemes.net_files/hoverIntent.js.download"></script>
<script src="./Studio Francesca - Premium Theme by WowThemes.net_files/superfish.js.download"></script>
<script src="./Studio Francesca - Premium Theme by WowThemes.net_files/responsivemenu.js.download"></script>-->

<script src="javascripts/foundation.min.js"></script>
<script src="javascripts/jquery.easing.1.3.js"></script>
<script src="javascripts/elasticslideshow.js"></script>
<script src="javascripts/jquery.carouFredSel-6.0.5-packed.js"></script>
<script src="javascripts/jquery.cycle.js"></script>
<script src="javascripts/app.js"></script>
<script src="javascripts/modernizr.foundation.js"></script>
<script src="javascripts/slidepanel.js"></script>
<script src="javascripts/scrolltotop.js"></script>
<script src="javascripts/hoverIntent.js"></script>
<script src="javascripts/superfish.js"></script>
<script src="javascripts/responsivemenu.js"></script>
        </form>
</body>
</html>
