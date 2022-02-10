<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html lang="en">
  <head>
  	<title>Login 10</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

	</head>
	<body class="img js-fullheight" style="background-image: url(images/LOGIN.jpg); background-size:contain;">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section" style="font-family: 'Arial Black'">Wedigo</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center" style="font-family: 'Franklin Gothic Medium'">Login</h3>
		      	<form action="#" class="signin-form" runat="server">
		      		<div class="form-group">
		      			<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Email ID"></asp:TextBox>
		      		</div>
	            <div class="form-group">
	              <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
	              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
	            <div class="form-group">
	            	<asp:LinkButton ID="LinkButton3" runat="server" class="form-control btn btn-primary submit px-3" 
                        onclick="Button1_Click">Sign In</asp:LinkButton>
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
		            	 
								</div>
								<div class="w-50 text-md-right">
									<a href="#" style="color: #fff"><asp:LinkButton ID="LinkButton2" runat="server" 
                                        onclick="LinkButton2_Click">Forgot Password</asp:LinkButton></a>
								</div>
	            </div>
	          
	          <p class="w-100 text-center">&mdash; Didn't Registered Yet??? &mdash;</p>
	          <div class="social d-flex text-center">
	          	<asp:LinkButton ID="LinkButton1" runat="server" class="px-2 py-2 ml-md-1 rounded" 
                      onclick="LinkButton1_Click">Register</asp:LinkButton>
	          	
	          </div>
              </form>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>
