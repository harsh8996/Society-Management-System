<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width"/>
<title>Login</title>
<!-- CSS Files-->
<link rel="stylesheet" href="stylesheets/style.css" />
<link rel="stylesheet" href="stylesheets/skins/blue.css" />
<!-- skin color -->
<link rel="stylesheet" href="stylesheets/responsive.css" />
</head>
<body>
    <form runat="server">
    <div id="panel">
	<div class="row">
		<div class="twelve columns">
			<!-- <img src="http://www.wowthemes.net/demo/studiofrancesca/images/info.png" class="pics" alt="info"> -->
			<div class="infotext">
				<!--  Thank you for visiting my theme! Replace this with your message to visitors. -->
				Phone: +91-9099499731 | Mail: swaminarayanPark@info.com
				<a style="float:right" href="Login.aspx">Login</a>
		
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
</div>

<div id="subheader">
	<div class="row">
		<div class="twelve columns">
			<p class="left">LOGIN</p>
			
		</div>
	</div>
</div>
	
			
			<div class="done">
				<div class="alert-box success">
				 Message has been sent! <a href="#" class="close">x</a>
				</div>
			</div>		
    <div style="width:100%">	
				<div class="form" style="width:49%;float:left">
                    <div style="margin-left:150px">
					<h3>Member Login</h3>
					<label>Flat No*</label>
                        <asp:TextBox runat="server" id="mem_flat_no" class="smoothborder" placeholder="Flat  Number" style="width:100px" ></asp:TextBox>
					<br/>
					<label>Password*</label>
                        <asp:TextBox runat="server" id="mem_password" TextMode="Password" class="smoothborder" style="width:200px"></asp:TextBox>
					<br/>
                    <asp:Button runat="server"	id="submit" class="readmore" Text="Submit" OnClick="MemberLogin" />
                        </div>
				</div>
				<div class="form" style="width:49%;float:right">
					<h3>Admin Login</h3>
					<label>Member Type</label>
                    <asp:DropDownList runat="server" ID="type_member" style="width:200px">
                        <asp:ListItem Text="Committee Member"></asp:ListItem>
                        <asp:ListItem Text="Secretary"></asp:ListItem>
                        <asp:ListItem Text="Chairman"></asp:ListItem>
                    </asp:DropDownList>
					<br/><br />
					<label>Flat No*</label>
                        <asp:TextBox runat="server" id="admin_flat_no" class="smoothborder" placeholder="Flat  Number" style="width:100px"></asp:TextBox>
					<br/>
					<label>Password*</label>
                        <asp:TextBox runat="server" TextMode="Password" ID="admin_password" class="smoothborder" style="width:200px"></asp:TextBox>
					<br/>
                    <asp:Button runat="server" id="submit1" class="readmore" Text="Submit" OnClick="AdminLogin" />
				</div>	
        </div>	
        <br /><br />
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br />

<!-- FOOOTER 
================================================== -->
<div id="footer" >
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
<!-- Javascript files placed here for faster loading -->
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
