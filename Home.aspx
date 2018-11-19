<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="myModule">
<head runat="server">
    <meta charset="utf-8"/>
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width"/>
<title>SwaminarayanPark</title>
    <base href="/" />
    <script src="scripts/angular.js"></script>
    <script src="scripts/script_2.js"></script>
<!-- CSS Files-->
<link rel="stylesheet" href="stylesheets/style.css" />

<link rel="stylesheet" href="stylesheets/skins/blue.css" />
<!-- skin color -->
<link rel="stylesheet" href="stylesheets/responsive.css" />
</head>
<body ng-controller="myController">
    <form runat="server">
    <div id="panel">
	<div class="row">
		<div class="twelve columns">
			<!-- <img src="http://www.wowthemes.net/demo/studiofrancesca/images/info.png" class="pics" alt="info"> -->
			<div class="infotext">
				<!--  Thank you for visiting my theme! Replace this with your message to visitors. -->
				Phone: +91-9099499731 | Mail: swaminarayanPark@info.com
                <a style="float:right" href="Display_queries.aspx" id="query" runat="server">Queries</a>
				<a style="float:right" href="Login.aspx" runat="server" id="login">Login</a>
                <a style="float:right" href="Signup.aspx" runat="server" id="signup">SignUp</a>
                <a style="float:right" href="Add_News.aspx" runat="server" id="news">Add News</a>
                 <asp:DropDownList ID="dropdown" runat="server" style="border: 2px solid #7d6754; border-radius: 5px; padding: 3px; -webkit-appearance: none; background-image: url('http://localhost:57735/images/menu-icon.png'); background-position: 125px; background-repeat: no-repeat; text-indent: 0.01px; text-overflow: ''; ; width: 150px; float: right;" AutoPostBack="true"  OnSelectedIndexChanged="dropdown6_SelectedIndexChanged">
                     <asp:ListItem>--Select--</asp:ListItem>   
                     <asp:ListItem>Personal Information</asp:ListItem> 
                        <asp:ListItem>Change Password</asp:ListItem>
                        <asp:ListItem>Logout</asp:ListItem>
                    </asp:DropDownList>
                

               <!-- <a style="float:right" onclick="logout" runat="server" id="logout">Logout</a> -->
		
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
			
			<p class="left">
				 <a href="Home.aspx">HOME</a>
			</p>
            <p class="right">
                <asp:Label runat="server" ID="label1" ></asp:Label>
            </p>
				<!--  You are here: <a href="index.html"> Home</a> / <a href="blogpage2.html">Blog second style</a> -->
	
		</div>
		<!--<div class="four columns">
			<div class="row collapse">
				<div class="ten mobile-three columns">
					<p><asp:Label runat="server" ></asp:Label></p>
				</div>
			</div>
		</div>-->
	</div>
</div>
<!-- SLIDER 
================================================== -->
<div id="ei-slider" class="ei-slider">
	<ul class="ei-slider-large">
		<li>
		<img src="images\1b.jpg" alt="image01" class="responsiveslide" />
		<!-- <div class="ei-title">
			<h2>Dare to</h2>
			<h3>Dream</h3>
		</div> -->
		</li>
		<li>
		<img src="images\6b.jpg" alt="image02" class="responsiveslide" />
		<!-- <div class="ei-title">
			<h2>Dare to</h2>
			<h3>Hope</h3>
		</div> -->
		</li>
		<li>
		<img src="images\9b.jpg" alt="image03" class="responsiveslide" />
		<!-- <div class="ei-title">
			<h2>Dare to</h2>
			<h3>Smile</h3>
		</div> -->
		</li>
		<li>
		<img src="images\10b.jpg" alt="image04" class="responsiveslide" />
		<!-- <div class="ei-title">
			<h2>Dare to</h2>
			<h3>ask</h3>
		</div> -->
		</li>
		<!-- <li>
		<img src="http://placehold.it/1400x500/222" alt="image05" class="responsiveslide">
		 <div class="ei-title">
			<h2>Dare to</h2>
			<h3>refuse</h3>
		</div> 
		</li> -->
		<!-- <li>
		<img src="http://placehold.it/1400x500/222" alt="image06" class="responsiveslide">
		<div class="ei-title">
			<h2>Dare to</h2>
			<h3>give</h3>
		</div> 
		</li> -->
		<!-- <li>
		<img src="http://placehold.it/1400x500/222" alt="image07" class="responsiveslide">
		<div class="ei-title">
			<h2>Dare to</h2>
			<h3>receive</h3>
		</div> 
		</li> -->
		<!-- <li>
		<img src="http://placehold.it/1400x500/222" alt="image08" class="responsiveslide">
		 <div class="ei-title">
			<h2>Dare to </h2>
			<h3>Love</h3>
		</div> 
		</li> -->
		<!-- <li>
		<img src="http://placehold.it/1400x500/222" alt="image09" class="responsiveslide">
		 <div class="ei-title">
			<h2>Dare to</h2>
			<h3>Forgive</h3>
		</div>
		</li> -->
		<!-- <li>
		<img src="http://placehold.it/1400x500/222" alt="image10" class="responsiveslide">
		 <div class="ei-title">
			<h2>Stand up & </h2>
			<h3>Live</h3>
		</div> 
		</li> -->
	</ul>
	<!-- slider-thumbs -->
	<ul class="ei-slider-thumbs">
		<li class="ei-slider-element">Current</li>
		<li><a href="#">Slide 1</a></li>
		<li><a href="#">Slide 2</a></li>
		<li><a href="#">Slide 3</a></li>
		<li><a href="#">Slide 4</a></li>
		<!--  <li><a href="#">Slide 5</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb05"/></li>
		<li><a href="#">Slide 6</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb06"/></li>
		<li><a href="#">Slide 7</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb07"/></li>
		<li><a href="#">Slide 8</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb08"/></li>
		<li><a href="#">Slide 9</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb09"/></li>
		<li><a href="#">Slide 10</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb10"/></li>  -->
	</ul>
</div>
<!-- <div class="minipause">
</div> -->
<!-- SUBHEADER
================================================== -->
<!-- <div id="subheader">
	 <div class="row">
		<div class="twelve columns">
			<p class="text-center">
				 "Vision is the art of seeing what is invisible to others" - Jonathan Swift
			</p>
		</div> 
	</div>  
</div> -->
<!-- ANIMATED COLUMNS 
================================================== -->
<!-- <div class="row">
	<div class="twelve columns">
		<ul class="ca-menu">
			<li>
			<a href="#">
			<span class="ca-icon"><i class="fa fa-heart"></i></span>
			<div class="ca-content">
				<h2 class="ca-main">Responsive<br/> Design</h2>
				<h3 class="ca-sub">Across all major devices</h3>
			</div>
			</a>
			</li>
			<li>
			<a href="#">
			<span class="ca-icon"><i class="fa fa-bullhorn"></i></span>
			<div class="ca-content">
				<h2 class="ca-main">Friendly<br/> Documentation</h2>
				<h3 class="ca-sub">Straight to the point</h3>
			</div>
			</a>
			</li>
			<li>
			<a href="#">
			<span class="ca-icon"><i class="fa fa-user"></i></span>
			<div class="ca-content">
				<h2 class="ca-main">Alternate<br/> Home Pages</h2>
				<h3 class="ca-sub">Full slider, boxed or none</h3>
			</div>
			</a>
			</li>
			<li>
			<a href="#">
			<span class="ca-icon"><i class="fa fa-camera"></i></span>
			<div class="ca-content">
				<h2 class="ca-main">Filterable<br/> Portofolio</h2>
				<h3 class="ca-sub">Isotop & PrettyPhoto</h3>
			</div>
			</a>
			</li>
		</ul>
	</div> 
</div> -->
<!-- CONTENT 
================================================== -->
<br />
<br />


<div class="row">
	<div>
		<ul class="ca-menu">
			<li>
			<a href="#">
			<span class="ca-icon">S</span>
			<div class="ca-content">
				 <h2 class="ca-main">Sagacious</h2> 
				<!-- <h3 class="ca-sub">Across all major devices</h3> -->
			</div>
			</a>
			</li>
			<li>
			<a href="#">
			<span class="ca-icon">O</span>
			<div class="ca-content">
				<h2 class="ca-main">Overjoyed</h2>
				<!-- <h3 class="ca-sub">Across all major devices</h3> -->
			</div>
			</a>
			</li>
			<li>
			<a href="#">
			<span class="ca-icon">C</span>
			<div class="ca-content">
				<h2 class="ca-main">Celebration</h2>
				<!-- <h3 class="ca-sub">Straight to the point</h3> -->
			</div>
			</a>
			</li>
			<li>
			<a href="#">
			<span class="ca-icon">I</span>
			<div class="ca-content">
				<h2 class="ca-main">Impressive</h2>
				<!-- <h3 class="ca-sub">Full slider, boxed or none</h3> -->
			</div>
			</a>
			</li>
			<li>
			<a href="#">
			<span class="ca-icon">E</span>
			<div class="ca-content">
				<h2 class="ca-main">Extraordinary</h2>
				<!-- <h3 class="ca-sub">Isotop & PrettyPhoto</h3> -->
			</div>
			</a>
			</li>
			<li>
			<a href="#">
			<span class="ca-icon">T</span>
			<div class="ca-content">
				<h2 class="ca-main">Trustful</h2>
				<!-- <h3 class="ca-sub">Isotop & PrettyPhoto</h3> -->
			</div>
			</a>
			</li>
			<li>
			<a href="#">
			<span class="ca-icon">Y</span>
			<div class="ca-content">
				<h2 class="ca-main">Yes</h2>
				<!-- <h3 class="ca-sub">Isotop & PrettyPhoto</h3> -->
			</div>
			</a>
			</li>
		</ul>
	</div>
</div>




<br />
<br />


<div class="row">
	<div class="twelve columns">
		<div class="centersectiontitle">
			<h4>Latest News</h4>
		</div>
	</div>
	<div >
		<table>
            <tr ng-repeat="i in news">
                <td><h3>{{i.News_Message}}</h3></td>
            </tr>
		</table>
            
	</div>
	<!--<div class="four columns">
		<h5>Function</h5>
		<p>
				Sunday there will be function so please do not park Vehicle in the parking .
		</p>
		<p>
			<a href="#" class="readmore">Learn more</a>
		</p>
	</div>
	<div class="four columns">
		<h5>Meeting</h5>
		<p>
			 Tomorrow there will be a meeting so all the members must come.
		</p>
		<p>
			<a href="#" class="readmore">Learn more</a>
		</p>
	</div>-->
</div>
<div class="hr">
</div>
<!-- TESTIMONIALS 
================================================== -->
<div class="row">
	<div class="twelve columns">
		<div id="testimonials">
			<!-- <blockquote>
				<p>
					 "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis." <cite>Martin - NY</cite>
				</p>
			</blockquote>
			<blockquote>
				<p>
					 "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco." <cite>Sandra - LA</cite>
				</p>
			</blockquote>
			<blockquote>
				<p>
					 "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco." <cite>Jason - MA</cite>
				</p>
			</blockquote>
 -->		</div>
		<!--end testimonials-->
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
		<img src="images\1b.jpg" alt="image01" class="responsiveslide" style="height:70px;width:100px">
		<img src="images\6b.jpg" alt="image01" class="responsiveslide" style="height:70px;width:100px"></br>
		<img src="images\9b.jpg" alt="image01" class="responsiveslide" style="height:70px;width:100px">
		<img src="images\10b.jpg" alt="image01" class="responsiveslide" style="height:70px;width:100px">

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
