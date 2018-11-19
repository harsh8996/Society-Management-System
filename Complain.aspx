<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Complain.aspx.cs" Inherits="Complain" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width" />
<title>SwaminarayanPark</title>
<!-- CSS Files-->
     <link href="CSS/CSS.css" rel="stylesheet" type="text/css" /> 
<script src="scripts/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="scripts/jquery.blockUI.js" type="text/javascript"></script>
<script type = "text/javascript">
    function BlockUI(elementID) {
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_beginRequest(function() {
            $("#" + elementID).block({ message: '<table align = "center"><tr><td>' +
     '<img src="images/loadingAnim.gif"/></td></tr></table>',
                css: {},
                overlayCSS: { backgroundColor: '#000000', opacity: 0.6
                }
            });
        });
        prm.add_endRequest(function() {
            $("#" + elementID).unblock();
        });
    }
    $(document).ready(function() {

        BlockUI("<%=pnlAddEdit.ClientID %>");
        $.blockUI.defaults.css = {};
    });
    function Hidepopup() {
        $find("popup").hide();
        return false;
    }
   
</script> 
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
</div>
<!-- SUBHEADER
================================================== -->
<div id="subheader">
	<div class="row">
		<div class="twelve columns">
			<p class="left">
				 COMPLAIN BOX
			</p>
                <p class="right">
				<asp:Label runat="server" ID="label1" ></asp:Label>
			</p>
				<!--  You are here: <a href="index.html"> Home</a> / <a href="blogpage2.html">Blog second style</a> -->
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
<div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
</asp:ScriptManager>
            
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<!--<asp:GridView ID="GridView1" runat="server"  Width = "550px"
AutoGenerateColumns = "false"  AlternatingRowStyle-BackColor = "#C2D69B"  
HeaderStyle-BackColor = "green" AllowPaging ="true"

PageSize = "10" >
<Columns>
<asp:BoundField DataField = "CustomerID" HeaderText = "Customer ID" HtmlEncode = "true" />
<asp:BoundField DataField = "ContactName" HeaderText = "Contact Name"  HtmlEncode = "true" />
<asp:BoundField DataField = "CompanyName" HeaderText = "Company Name"  HtmlEncode = "true"/> 
<asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "CustomerID">
   <ItemTemplate>
       <asp:LinkButton ID="lnkEdit" runat="server" Text = "Edit"></asp:LinkButton>
   </ItemTemplate>
</asp:TemplateField>
</Columns> 
<AlternatingRowStyle BackColor="#C2D69B"  />
</asp:GridView>-->
<asp:Button ID="btnAdd" runat="server" Text="Add Complain" onClick="Add"/>
<asp:Panel ID="pnlAddEdit" runat="server" CssClass="modalPopup" style = "display:none">
<asp:Label Font-Bold = "true" ID = "Label4" runat = "server" Text = "Customer Details" ></asp:Label>
<br />
<table>
<tr>
<td>
<asp:Label runat = "server" Text = "Flat No" ></asp:Label>
</td>
<td>
<asp:TextBox ID="popup_flat_no" Width = "40px" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:Label ID = "lbl_popup_message" runat = "server" ></asp:Label>
</td>
<td>
<asp:TextBox ID="popup_message" runat="server"></asp:TextBox>    
</td>
</tr>
<!--<tr>
<td>
<asp:Label ID = "Label3" runat = "server" Text = "Company" ></asp:Label>
</td>
<td>
<asp:TextBox ID="txtCompany" runat="server"></asp:TextBox>
</td>
</tr>-->
<tr>
<td>
<asp:Button ID="btnSave" runat="server" Text="Save" OnClick="Save"/>
</td>
<td>
<asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick = "cancel"/>
</td>
</tr>
</table>
</asp:Panel>
<asp:LinkButton ID="lnkFake" runat="server"></asp:LinkButton>
<cc1:ModalPopupExtender ID="popup" runat="server" DropShadow="false"
PopupControlID="pnlAddEdit" TargetControlID = "lnkFake"
BackgroundCssClass="modalBackground">
</cc1:ModalPopupExtender>
</ContentTemplate> 
<Triggers>
<asp:AsyncPostBackTrigger ControlID = "GridView1" />
<asp:AsyncPostBackTrigger ControlID = "btnSave" />
</Triggers> 
</asp:UpdatePanel> 
                </div>
         <div class="row">
            <div class="form-group col-md-12">
                <asp:Repeater runat="server" ID="itemsRepeater" EnableViewState="false" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                        <div class="col-md-4">
                            <div class="col-md-4">
                                <asp:Label ID="lbl_complain_id" runat="server" Visible="false" Text='<%# DataBinder.Eval(Container.DataItem, "Complain_Id") %>' ></asp:Label>
                                <br />

                                <asp:Label ID="lbl_com_flat_no" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Com_Flat_No") %>'></asp:Label>
                                <br />
                                <asp:Label ID="lbl_complain_message" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Complain_Message") %>'></asp:Label>
                                <br />
                                <asp:Button ID="add_solution" runat="server" Text="Add Solution" CommandName="solution" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "Complain_Id") %>'/>
                                  
                            </div>
                            <div class="col-md-5">
                                <asp:Repeater runat="server" ID="subitemsRepeater" EnableViewState="false" DataSource='<%# DataBinder.Eval(Container.DataItem, "SubItems") %>'>
                                    <ItemTemplate>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <asp:Label ID="lbl_solution_id" runat="server" Visible="false" Text='<%# DataBinder.Eval(Container.DataItem, "Solution_Id") %>'></asp:Label>
                                               <asp:Label ID="lbl_sol_flat_no" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Sol_Flat_No") %>'></asp:Label>
                                                <asp:Label ID="lbl_solution_message" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Solution_Message") %>'></asp:Label>

                                            </div>
                                        </div>
                                    </ItemTemplate>

                                </asp:Repeater>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
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
		<img src="images\6b.jpg" alt="image01" class="responsiveslide" style="height:70px;width:100px" /><br/>
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
