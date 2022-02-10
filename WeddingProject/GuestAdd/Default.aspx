<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="GuestAdd_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<title>WEDIGO</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Awesome Register Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font --> 
<link href="//fonts.googleapis.com/css?family=Poiret+One&amp;subset=cyrillic,latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i&amp;subset=latin-ext" rel="stylesheet">
<!-- //web font -->
</head>
<body>
	<!-- main -->
	<div style=" background-image:url('../GuestAdd/images/dec6.jpg')">
	<div class="main-w3layouts center-container">
    <form id="Form1" action="#" method="post" runat="server">
		<h1>Make Your Guests' List</h1>
        <asp:LinkButton ID="Button2" runat="server" Text="Back To HomePage" OnClick="Button2_Click" ForeColor="#E91E63" style="border: 5px outset #E91E63; padding:4px;"/>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>
		<div class="main-agileinfo">
			<div class="agileits-top"> 
				 
					<i class="fa fa-user-o" aria-hidden="true"></i>

                   <asp:TextBox ID="TextBox1" runat="server" class="text" placeholder="Guest's name" required></asp:TextBox>
				    
                   <asp:TextBox ID="TextBox2" runat="server" class="text email" placeholder="Email Id" required></asp:TextBox>
				
                  <asp:TextBox ID="TextBox3" runat="server" class="text" placeholder="Mobile" required></asp:TextBox><br /><br />
					
                <asp:TextBox ID="TextBox4" runat="server" class="text" placeholder="Message" required></asp:TextBox>
					<div class="wthree-text">  
						<label class="anim">
							
						</label>  
						<div class="clear"> </div>
					</div>   
                <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click"/>

                <asp:TextBox ID="TextBox5" runat="server" class="text" ForeColor="Aqua"></asp:TextBox>
                
                
				</form>
			</div>	 
		</div>	
		<!-- copyright -->
		<div class="w3copyright-agile">
			
		</div>
		<!-- //copyright -->	
	</div>	
	</div>	
	<!-- //main --> 
	<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="js/jquery.vide.min.js"></script>
<!-- //js -->

</body>
</html>
