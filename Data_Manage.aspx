﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Data_Manage.aspx.cs" Inherits="Data_Manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="myModule">
<head runat="server">
<title>Data Management</title>
    <base href="/" />
    <script src="scripts/angular.js"></script>
    <script src="scripts/angular-route.min.js"></script>
    <script src="scripts/script_1.js"></script>
<!-- CSS Files-->
<link rel="stylesheet" href="stylesheets/style.css" />

<link rel="stylesheet" href="stylesheets/skins/blue.css" />
<!-- skin color -->
<link rel="stylesheet" href="stylesheets/responsive.css" />
</head>
<body >
    <form runat="server">
    <div id="panel">
	<div class="row">
		<div class="twelve columns">
			<!-- <img src="http://www.wowthemes.net/demo/studiofrancesca/images/info.png" class="pics" alt="info"> -->
			<div class="infotext">
				<!--  Thank you for visiting my theme! Replace this with your message to visitors. -->
				Phone: +91-9099499731 | Mail: swaminarayanPark@info.com
                <a style="float:right" href="display" id="query" runat="server">Queries</a>
				<a style="float:right" href="Login.aspx" id="login" runat="server">Login</a>
                <a style="float:right" href="Signup.aspx" runat="server" id="signup">SignUp</a>
                <a style="float:right" href="Add_News.aspx" runat="server" id="news">Add News</a>
                 <asp:DropDownList ID="dropdown" runat="server" style="border: 2px solid #7d6754; border-radius: 5px; padding: 3px; -webkit-appearance: none; background-image: url('http://localhost:57735/images/menu-icon.png'); background-position: 125px; background-repeat: no-repeat; text-indent: 0.01px; text-overflow: ''; ; width: 150px; float: right;" OnSelectedIndexChanged="dropdown5_SelectedIndexChanged" AutoPostBack="true">
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
			<a href="home">Home</a>
			<!-- <ul>
				<li><a href="index2.html">Without slider</a></li>
			</ul> -->
			</li>
			<li>
			<a href="#">Service</a>
			 <ul>
				<li><a href="bill">Billing & Accounting</a></li>
				<!-- <li><a href="portofolio2.html">Billing & Accounting</a></li> -->
				<li><a href="complain">Complain Box</a></li>
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
			<a href="blog">Blog</a>
			<!-- <ul>
				<li><a href="about.html">About us</a></li>
				<li><a href="services.html">Services</a></li>
			</ul> -->
			</li>
			<li>
			<a href="about">About Us</a>
			<!-- <ul>
				<li><a href="columns.html">Columns</a></li>
				<li><a href="elements.html">Elements</a></li>
				<li><a href="typography.html">Typography</a></li>
			</ul> -->
			</li>
			<li>
			<a href="contact">Contact Us</a>
			</li>
		</ul>
		</nav>
	</div>
</div>
<div class="clear">
</div>
<!-- SUBHEADER
================================================== -->
<div id="subheader">
	<div class="row">
		<div class="twelve columns">
			<p class="left">
				 DATA MANAGEMENT
			</p>
            <p class="right">
				<asp:Label runat="server" ID="label1" ></asp:Label>
			</p>
		</div>
	</div>
</div>
<div class="hr">
</div>
<!-- CONTENT 
================================================== -->
<div class="row">
	<div class="twelve columns">
		<!-- CATEGORIES -->
          <a href="blockA" data-option-value=".nature" class="portofoliobutton">Block-A</a>
          <a href="blockB" data-option-value=".nature" class="portofoliobutton">Block-B</a>
          <a href="blockC" data-option-value=".nature" class="portofoliobutton">Block-C</a>
          <a href="blockD" data-option-value=".nature" class="portofoliobutton">Block-D</a>
		
	</div>
</div>


 <!--<div class="row1" style="margin-right:400px; height:95px ; width:75px;float:right"> 
    
<table cellpadding="5" border="1" style="float:right; margin-right:200px">
	<tr >	
			<td> <input type="button" style="height:40px;width:40px;background-color:green; "/></td>
			<td> Available </td>
	</tr>
	<tr >		
			<td> <input type="button" style="height:40px;width:40px;background-color:red"/></td>
			<td> On Rent </td>
	</tr>
	<tr >		
			<td> <input type="button" style="height:40px;width:40px;background-color:grey; "/></td>
			<td> Permenent </td>
	</tr>
	</table>
	</div>-->
	
	
<div>
	<ng-view></ng-view>
</div>

	<!-- <div id="portofolio"> -->
		<!-- Project 1-->
	<!-- 	<div class="three columns category trains">
			<h5>OLD TRAIN</h5>
			<p>
				 Lorem ipsum dolor sit amet, consectetur adipisicing elit.
			</p>
			<div class="portofoliothumb">
				<div class="portofoliothumboverlay fouroverlay">
					<div class="viewgallery fourgallery">
						<a data-gal="prettyPhoto[gallery]" href="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio1.jpg"><img src="http://www.wowthemes.net/demo/studiofrancesca/images/playgal.png" class="left galleryicon" alt=""> Gallery</a>
					</div>
					<div class="inner fourdetail">
						<a class="projectdetail" href="portofoliodetail.html">+ Project Details</a>
					</div>
				</div>
				<img src="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio1.jpg" class="fourimage" alt=""/>
			</div>
		</div> -->
		<!-- Project 2-->
		<!-- <div class="three columns category castles">
			<h5>BLUE NIGHT</h5>
			<p>
				 Lorem ipsum dolor sit amet, consectetur adipisicing elit.
			</p>
			<div class="portofoliothumb">
				<div class="portofoliothumboverlay fouroverlay">
					<div class="viewgallery fourgallery">
						<a data-gal="prettyPhoto[gallery]" href="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio2.jpg"><img src="http://www.wowthemes.net/demo/studiofrancesca/images/playgal.png" class="left galleryicon" alt=""> Gallery</a>
					</div>
					<div class="inner fourdetail">
						<a class="projectdetail" href="portofoliodetail.html">+ Project Details</a>
					</div>
				</div>
				<img src="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio2.jpg" class="fourimage" alt=""/>
			</div>
		</div> -->
		<!-- Project 3-->
		<!-- <div class="three columns category nature">
			<h5>NOSTALGIA</h5>
			<p>
				 Lorem ipsum dolor sit amet, consectetur adipisicing elit.
			</p>
			<div class="portofoliothumb">
				<div class="portofoliothumboverlay fouroverlay">
					<div class="viewgallery fourgallery">
						<a data-gal="prettyPhoto[gallery]" href="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio3.jpg"><img src="http://www.wowthemes.net/demo/studiofrancesca/images/playgal.png" class="left galleryicon" alt=""> Gallery</a>
					</div>
					<div class="inner fourdetail">
						<a class="projectdetail" href="portofoliodetail.html">+ Project Details</a>
					</div>
				</div>
				<img src="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio3.jpg" class="fourimage" alt=""/>
			</div>
		</div> -->
		<!-- Project 4-->
		<!-- <div class="three columns category castles">
			<h5>COLD CASTLE</h5>
			<p>
				 Lorem ipsum dolor sit amet, consectetur adipisicing elit.
			</p>
			<div class="portofoliothumb">
				<div class="portofoliothumboverlay fouroverlay">
					<div class="viewgallery fourgallery">
						<a data-gal="prettyPhoto[gallery]" href="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio4.jpg"><img src="http://www.wowthemes.net/demo/studiofrancesca/images/playgal.png" class="left galleryicon" alt=""> Gallery</a>
					</div>
					<div class="inner fourdetail">
						<a class="projectdetail" href="portofoliodetail.html">+ Project Details</a>
					</div>
				</div>
				<img src="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio4.jpg" class="fourimage" alt=""/>
			</div>
		</div> -->
		<!-- Project 5-->
		<!-- <div class="three columns category nature castles">
			<h5>RED FLOWERS</h5>
			<p>
				 Lorem ipsum dolor sit amet, consectetur adipisicing elit.
			</p>
			<div class="portofoliothumb">
				<div class="portofoliothumboverlay fouroverlay">
					<div class="viewgallery fourgallery">
						<a data-gal="prettyPhoto[gallery]" href="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio5.jpg"><img src="http://www.wowthemes.net/demo/studiofrancesca/images/playgal.png" class="left galleryicon" alt=""> Gallery</a>
					</div>
					<div class="inner fourdetail">
						<a class="projectdetail" href="portofoliodetail.html">+ Project Details</a>
					</div>
				</div>
				<img src="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio5.jpg" class="fourimage" alt=""/>
			</div>
		</div> -->
		<!-- Project 6-->
		<!-- <div class="three columns category nature">
			<h5>SHADOW LIGHT</h5>
			<p>
				 Lorem ipsum dolor sit amet, consectetur adipisicing elit.
			</p>
			<div class="portofoliothumb">
				<div class="portofoliothumboverlay fouroverlay">
					<div class="viewgallery fourgallery">
						<a data-gal="prettyPhoto[gallery]" href="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio6.jpg"><img src="http://www.wowthemes.net/demo/studiofrancesca/images/playgal.png" class="left galleryicon" alt=""> Gallery</a>
					</div>
					<div class="inner fourdetail">
						<a class="projectdetail" href="portofoliodetail.html">+ Project Details</a>
					</div>
				</div>
				<img src="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio6.jpg" class="fourimage" alt=""/>
			</div>
		</div> -->
		<!-- Project 7-->
		<!-- <div class="three columns category nature">
			<h5>BIG CITY</h5>
			<p>
				 Lorem ipsum dolor sit amet, consectetur adipisicing elit.
			</p>
			<div class="portofoliothumb">
				<div class="portofoliothumboverlay fouroverlay">
					<div class="viewgallery fourgallery">
						<a data-gal="prettyPhoto[gallery]" href="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio7.jpg"><img src="http://www.wowthemes.net/demo/studiofrancesca/images/playgal.png" class="left galleryicon" alt=""> Gallery</a>
					</div>
					<div class="inner fourdetail">
						<a class="projectdetail" href="portofoliodetail.html">+ Project Details</a>
					</div>
				</div>
				<img src="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio7.jpg" class="fourimage" alt=""/>
			</div>
		</div> -->
		 <!-- Project 8-->
		<!-- <div class="three columns category nature">
			<h5>DEEP FOREST</h5>
			<p>
				 Lorem ipsum dolor sit amet, consectetur adipisicing elit.
			</p>
			<div class="portofoliothumb">
				<div class="portofoliothumboverlay fouroverlay">
					<div class="viewgallery fourgallery">
						<a data-gal="prettyPhoto[gallery]" href="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio8.jpg"><img src="http://www.wowthemes.net/demo/studiofrancesca/images/playgal.png" class="left galleryicon" alt=""> Gallery</a>
					</div>
					<div class="inner fourdetail">
						<a class="projectdetail" href="portofoliodetail.html">+ Project Details</a>
					</div>
				</div>
				<img src="http://www.wowthemes.net/demo/studiofrancesca/images/temp/folio8.jpg" class="fourimage" alt=""/>
			</div>
		</div>  -->
	<!-- </div> -->

<div class="hr">
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
<!-- Javascript files placed here for faster loading -->
<script src="javascripts/foundation.min.js"></script>
<script src="javascripts/jquery.cycle.js"></script>
<script src="javascripts/app.js"></script>
<script src="javascripts/modernizr.foundation.js"></script>
<script src="javascripts/slidepanel.js"></script>
<script src="javascripts/scrolltotop.js"></script>
<script src="javascripts/hoverIntent.js"></script>
<script src="javascripts/superfish.js"></script>
<script src="javascripts/responsivemenu.js"></script>
<script src="javascripts/jquery.tweet.js"></script>

<script src="javascripts/jquery.isotope.min.js"></script>
<script src="javascripts/jquery.prettyPhoto.js"></script>
<script src="javascripts/custom.js"></script>
        </form>
</body>
</html>
