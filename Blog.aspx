<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Blog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width" />
<title>Blog</title>
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
                <a style="float:right" href="Display_queries.aspx" id="query" runat="server">Queries</a>
				<a style="float:right" href="Login.aspx" id="login" runat="server">Login</a>
                <a style="float:right" href="Signup.aspx" runat="server" id="signup">SignUp</a>
                <a style="float:right" href="Add_News.aspx" runat="server" id="news">Add News</a>
                 <asp:DropDownList ID="dropdown" runat="server" style="border: 2px solid #7d6754; border-radius: 5px; padding: 3px; -webkit-appearance: none; background-image: url('http://localhost:57735/images/menu-icon.png'); background-position: 125px; background-repeat: no-repeat; text-indent: 0.01px; text-overflow: ''; ; width: 150px; float: right;" AutoPostBack="True" OnSelectedIndexChanged="dropdown2_SelectedIndexChanged">
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
</div>
<!-- SUBHEADER
================================================== -->
<div id="subheader">
	<div class="row">
		<div class="twelve columns">
			
			<p class="left">
				 BLOG
			</p>
				<!--  You are here: <a href="index.html"> Home</a> / <a href="blogpage2.html">Blog second style</a> -->
			
            <p class="right">
				<asp:Label runat="server" ID="label1" ></asp:Label>
			</p>
		</div>
		<!--<div class="four columns">
			<div class="row collapse">
				<div class="ten mobile-three columns">
					<input type="text" class="nomargin" placeholder="Search..." />
				</div>
				<div class="two mobile-one columns">
					<a href="#" class="postfix button expand">Go</a>
				</div>
			</div>
		</div>-->
	</div>
</div>
<div class="hr">
</div>
<!-- CONTENT 
================================================== -->
<div class="row">
	<div class="twelve columns noleftmargin">
	    <!-- MAIN CONTENT -->
		<div class="eight columns noleftmargin">
			<div class="six columns">
				<div class="boxblog">
					<h5>Hitarth Shah</h5>
					<p class="small date">
						Posted on: 2 feb 2017 <span class="has-tip tip-top" data-width="90" title="6 comments"><img src="http://www.wowthemes.net/demo/studiofrancesca/images/comments.png" alt="" /></span>
					</p>
					<p>
						<img src="images\harsh2.jpg" alt="" class="thumb" /> I live in G-301 and i have Water pileline problem.tank is fill very slow in my house. please provide immidiate help as we are sort of water in house.
					</p>
					<p>
						<a href="#" class="small continue">Continue reading</a>
					</p>
				</div>
			</div>
			<div class="six columns">
				<div class="boxblog">
					<h5>Jay Oza </h5>
					<p class="small date">
						Posted on: 5 feb 2017 <span class="has-tip tip-top" data-width="90" title="6 comments"><img src="http://www.wowthemes.net/demo/studiofrancesca/images/comments.png" alt="" /></span>
					</p>
					<p>
						<img src="images\harsh2.jpg" alt="" class="thumb" /> Hello. I am new to this society and don't know how to get my allocated details in society. I have two vehicles so i want accordingly parking places for that. help me with that.
					</p>
					<p>
						<a href="#" class="small continue">Continue reading</a>
					</p>
				</div>
			</div>
			<div class="six columns">
				<div class="boxblog">
					<h5>Harshit Patel</h5>
					<p class="small date">
						Posted on: 11 feb 2017 <span class="has-tip tip-top" data-width="90" title="6 comments"><img src="http://www.wowthemes.net/demo/studiofrancesca/images/comments.png" alt="" /></span>
					</p>
					<p>
						<img src="images\harsh2.jpg" alt="" class="thumb" />Hi,This is harshit from B-201.I am a bodybuilder and i used to use our gym of society and i found that we need to change the equippment of gym.
					</p>
					<p>
						<a href="#" class="small continue">Continue reading</a>
					</p>
				</div>
			</div>
			<div class="six columns">
				<div class="boxblog">
					<h5>Meet Naik</h5>
					<p class="small date">
						Posted on: 17 feb 2017 <span class="has-tip tip-top" data-width="90" title="6 comments"><img src="http://www.wowthemes.net/demo/studiofrancesca/images/comments.png" alt="" /></span>
					</p>
					<p>
						<img src="images\harsh2.jpg" alt="" class="thumb" /> Hello I am meet from C-301. In our garden trees are grown up so high, for few days due to autumn it shadded so many leafs in our garden. So please call proper gardener to make it clean and good to live. thank you.
					</p>
					<p>
						<a href="#" class="small continue">Continue reading</a>
					</p>
				</div>
			</div>
			<div class="six columns">
				<div class="boxblog">
					<h5>Hem Shah</h5>
					<p class="small date">
						Posted on: 22 feb 2017 <span class="has-tip tip-top" data-width="90" title="6 comments"><img src="http://www.wowthemes.net/demo/studiofrancesca/images/comments.png" alt="" /></span>
					</p>
					<p>
						<img src="images\1 (26).jpg" alt="" class="thumb" /> I am shyam from D-403. I am the use to see movies in our society theatre. even i also handle the work for theatre. but there is problem in sound system in our theatre. it needed to change it ASAP. 
					</p>
					<p>
						<a href="#" class="small continue">Continue reading</a>
					</p>
				</div>
			</div>
			<div class="six columns">
				<div class="boxblog">
					<h5>Vishvesh Kapadia</h5>
					<p class="small date">
						Posted on: 28 feb 2017 <span class="has-tip tip-top" data-width="90" title="6 comments"><img src="http://www.wowthemes.net/demo/studiofrancesca/images/comments.png" alt="" /></span>
					</p>
					<p>
						<img src="images\1 (26).jpg" alt="" class="thumb" />There is suggession from me. I have a dealer of water supply who can provide water at cheap rate for our swimming pool. secretary please contact me.
					</p>
					<p>
						<a href="#" class="small continue">Continue reading</a>
					</p>
				</div>
			</div>
			<ul class="pagination">
				<li class="arrow unavailable"><a href="#">&laquo;</a></li>
				<li class="current"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li class="unavailable"><a href="#">&hellip;</a></li>
				<li><a href="#">12</a></li>
				<li><a href="#">13</a></li>
				<li class="arrow"><a href="#">&raquo;</a></li>
			</ul>
		</div>
		<!-- SIDEBAR -->
		<div class="four columns">
			<h6 class="sidebartitle">RECENT COMMENTS</h6>
			<div class="avatar">
			<!-- <img src="http://www.wowthemes.net/demo/studiofrancesca/images/temp/author1.png" alt=""> -->
			
				<img src="images\harsh2.jpg" alt="">
			</div>
			<p>
				 I live in G-301 and i have Water pileline problem.tank is fill very slow in ...
			</p>
			<div class="avatar">
				<img src="http://www.wowthemes.net/demo/studiofrancesca/images/temp/author2.png" alt="" />
			</div>
			<p>
				  Hello. I am new to this society and don't know how to get my allocated details ...
			</p>
			<div class="avatar">
				<img src="images\1 (26).jpg" alt="" />
			</div>
			<p>
				 Hi,This is harshit from B-201.I am a bodybuilder and i used to use our gym of ...
			</p>
			<br class="clear"/>
			<!-- <h6 class="sidebartitle">POPULAR TAGS</h6>
			<a href="#" class="tags">Management</a>
			<a href="#" class="tags">Maintence</a>
			<a href="#" class="tags">Water</a>
			<a href="#" class="tags"></a>
			<a href="#" class="tags">Printing</a>
			<a href="#" class="tags">Contemporary</a>
			<a href="#" class="tags">Classic</a>
			<a href="#" class="tags">Elegant</a>
			<a href="#" class="tags">Graphics</a>
			<br class="clear"/> -->
			<br/><br/>
			<h6 class="sidebartitle">POPULAR POSTS</h6>
			<p>
				28 feb 2017
			</p>
			<p>
				There is suggession from me. I have a dealer of water supply who can provide water...
			</p>
			<p>
				22 feb 2017
			</p>
			<p>
				I am Shyam from D-403. I am the use to see movies in our society theatre. even i also handle the ...
			</p>
			<p>
				17 feb 2017
			</p>
			<p>
				Hello I am meet from C-301. In our garden trees are grown up so high, for few days due to autumn it shadded so many leafs in our garden...
			</p>
		</div>
	</div>
</div>
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
        </form>
</body>
</html>
