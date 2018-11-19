<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width" />
    <title>Contact Us</title>
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
                 <asp:DropDownList ID="dropdown" runat="server" style="border: 2px solid #7d6754; border-radius: 5px; padding: 3px; -webkit-appearance: none; background-image: url('http://localhost:57735/images/menu-icon.png'); background-position: 125px; background-repeat: no-repeat; text-indent: 0.01px; text-overflow: ''; ; width: 150px; float: right;" OnSelectedIndexChanged="dropdown4_SelectedIndexChanged" AutoPostBack="true">
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

            <div class="headerlogo four columns">

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
                        <h3 style="font-family: Georgia; color: #2ba6cb">
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
                        CONTACT US
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
             <!--GOOGLE MAP IFRAME -->
            <div class="twelve columns">
                <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d117507.76079046635!2d72.48686537412311!3d23.019456679538482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sswaminarayan+park+2+vasna!5e0!3m2!1sen!2sin!4v1467376822501" width="900" height="400" frameborder="0" style="border: 0; margin-left: 1%; margin-top: 2%;" allowfullscreen></iframe>
            </div>
        </div>
        <div class="row">
            <!-- CONTACT FORM -->
            <div class="twelve columns">
                <div class="wrapcontact">

                    <h5>Our Address</h5>
                    <div>
                        G-301 Swaminarayan Park-2 Flat Behind GB Shah College Near Vasna Ahmedabad 380007. 
                    </div>

                    <h5>Phone:</h5>
                    <div>
                        +91-9099499731
                    </div>

                    <h5>Email-Id:</h5>
                    <div>
                        swaminarayanPark@info.com
                    </div>






                    <h5>SEND US A MESSAGE</h5>
                    
                        
                            
                                <label>Name*</label>
                                <asp:TextBox runat="server" id="txt_name" class="smoothborder" placeholder="Your Name"></asp:TextBox>
                                <label>E-mail address*</label>
                                <asp:TextBox runat="server" ID="txt_email" class="smoothborder" placeholder="Your E-mail address"></asp:TextBox>
                                <label>Mobile No*</label>
                                <asp:TextBox runat="server" id="txt_mobile" class="smoothborder" placeholder="Your Mobile No"></asp:TextBox> 
                            <label>Message*</label>
                            <asp:TextBox ID="txt_description" runat="server" class="smoothborder ctextarea" TextMode="MultiLine" Rows="10" placeholder="Message, feedback, comments, inquiry"></asp:TextBox>
                            <asp:Button class="readmore" Text="Submit" runat="server" OnClick="XYZ" />
                        
                </div>
            </div>
               
            <!--<asp:Button Text="Submit" runat="server" OnClick="XYZ" />-->
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
                <div class="four columns">

                    <a href="Home.aspx" style="hoverintent: background-color:red">
                        <h1>Home</h1>
                    </a>
                    <a href="Data_Manage.aspx">
                        <h1>Data Management</h1>
                    </a>
                    <a href="About.aspx">
                        <h1>About Us</h1>
                    </a>
                    <a href="Contact.aspx">
                        <h1>Contact Us</h1>
                    </a>

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
                    <img src="images\1b.jpg" alt="image01" class="responsiveslide" style="height: 70px; width: 100px" />
                    <img src="images\6b.jpg" alt="image01" class="responsiveslide" style="height: 70px; width: 100px" /><br />
                    <img src="images\9b.jpg" alt="image01" class="responsiveslide" style="height: 70px; width: 100px" />
                    <img src="images\10b.jpg" alt="image01" class="responsiveslide" style="height: 70px; width: 100px" />

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
                    <span class="small floatright">Design by <a href="www.wowthemes.net">Super 3</a></span>
                </div>
            </div>
        </div>
        <!-- JAVASCRIPTS 
================================================== -->
        <!-- Javascript files placed here for faster loading -->
        <script src="javascripts/foundation.min.js"></script>
        <script src="javascripts/formvalidation.js"></script>
        <script src="javascripts/jquery.cycle.js"></script>
        <script src="javascripts/app.js"></script>
        <script src="javascripts/modernizr.foundation.js"></script>
        <script src="javascripts/slidepanel.js"></script>
        <script src="javascripts/scrolltotop.js"></script>
        <script src="javascripts/hoverIntent.js"></script>
        <script src="javascripts/superfish.js"></script>
        <script src="javascripts/responsivemenu.js"></script>
        <script src="javascripts/jquery.tweet.js"></script>
    </form>
</body>
</html>
