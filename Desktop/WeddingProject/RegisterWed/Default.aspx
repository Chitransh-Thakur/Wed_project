<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
	<title>Register</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body style="background-color: #999999;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('images/wed1.png'); background-size: cover;"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-title p-b-59">
						Sign Up
					</span>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">Bride's Name</span>
                        <asp:TextBox ID="TextBox1" runat="server" class="input100" placeholder="Dulhan..."></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					

					<div class="wrap-input100 validate-input">
						<span class="label-input100">Date of wedding</span>
                        <asp:TextBox ID="TextBox3" runat="server" class="input100" 
                            placeholder="Wedding Date..." TextMode="Date"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

                    <div class="wrap-input100 validate-input">
						<span class="label-input100">Partner's Name</span>
                        <asp:TextBox ID="TextBox2" runat="server" class="input100" placeholder="Dulha..."></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">Email</span>
                        <asp:TextBox ID="TextBox4" runat="server" class="input100" placeholder="Email..."></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

                   <asp:LinkButton ID="LinkButton1" runat="server" 
                            class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30" 
                        style=" padding: -30px; padding-left:150px; " onclick="LinkButton1_Click">Send OTP</asp:LinkButton>


					<div class="wrap-input100 validate-input">
						<span class="label-input100">Enter OTP</span>
                        <asp:TextBox ID="TextBox5" runat="server" class="input100" 
                            placeholder="Enter OTP..." TextMode="Password"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

                    <div class="wrap-input100 validate-input">
                        <asp:Label ID="Label1" runat="server" class="input100" Visible="False"></asp:Label>
						<span class="focus-input100"></span>
					</div>
                           
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							
                            <asp:LinkButton ID="LinkButton2" runat="server" class="login100-form-btn" 
                                onclick="LinkButton2_Click">Register</asp:LinkButton>
							
						</div>

						<a>
                            <asp:LinkButton ID="LinkButton3" runat="server" 
                            class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30" 
                            onclick="LinkButton3_Click">Log In</asp:LinkButton>
						   <i class="fa fa-long-arrow-right m-l-5"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
