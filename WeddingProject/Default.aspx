<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">

<head>
 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/css/fontawesome.css"> 
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <span><i class="fas fa-hands"></i></span><title>WEDIGO</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicol.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i|Playfair+Display:400,400i,500,500i,600,600i,700,700i,900,900i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Folio - v4.7.0
  * Template URL: https://bootstrapmade.com/folio-bootstrap-portfolio-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
<form action="" method="post" runat="server">
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center justify-content-between">

      <a href="index.html" class="logo"><img src="assets/img/ht.png" alt="" class="img-fluid"></a>
      <!-- Uncomment below if you prefer to use an text logo -->
      <!-- <h1 class="logo"><a href="index.html">Folio</a></h1> -->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">Make Invitation</a></li>
          <li><a class="nav-link  scrollto" href="#portfolio">Do Stuff</a></li>
          <li><a class="nav-link  scrollto" href="#journal">Blog</a></li>
          
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <div id="hero" class="home">

    <div class="container">
      <div class="hero-content">
        <h1 style="color: #E91E63">We are yours <span class="typed" data-typed-items= " Wedigo,Wedding Planner,The one for everything"></span></h1>
        <p style="color: #800000; font-weight: bold;">Be ready to go for your wedding.</p>

        <ul class="list-unstyled list-social">
          <li><a href="#"><i class="bi bi-facebook"></i></a></li>
          <li><a href="#"><i class="bi bi-twitter"></i></a></li>
          <li><a href="#"><i class="bi bi-instagram"></i></a></li>
          <li><a href="#"><i class="bi bi-linkedin"></i></a></li>
        </ul>
      </div>
    </div>
  </div><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <div id="about" class="paddsection">
      <div class="container">
        <div class="row justify-content-between">

          <div class="col-lg-4 ">
            <div class="div-img-bg">
              <div class="about-img">
                <img src="assets/img/gg.jpg" class="img-responsive" alt="me">
              </div>
            </div>
          </div>

          <div class="col-lg-7">
            <div class="about-descr">

              <p class="p-heading">Lets start with inviting your loved once becoz Guests are the main Glory of the Wedding. </p>
              <p class="separator">Worried about Invitation...! Just click on the link below to see the magic.</p><br />
              <span><i class="fas fa-hands"></i></span><asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="https://www.greetingsisland.com/invitations/wedding" 
                    style="font-weight: bold; text-decoration: underline;" 
                    BackColor="White" ForeColor="#FF0066">MAKE YOUR OWN INVITATION..Click Here</asp:HyperLink>
            </div>

          </div>
        </div>
      </div>
    </div><!-- End About Section -->

    <!--
    <!-- ======= Services Section ======= 
    <div id="services">
      <div class="container">

        <div class="services-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="services-block">
               
                <p class="separator">To an English person, it will seem like simplified English,told me what </p>
              </div>
            </div><!-- End testimonial item 

            <div class="swiper-slide">
              <div class="services-block">
                <i class="bi bi-card-checklist"></i>
                <span>BRAND IDENTITY</span>
                <p class="separator">To an English person, it will seem like simplified English,told me what </p>
              </div>
            </div><!-- End testimonial item 

            <div class="swiper-slide">
              <div class="services-block">
                <i class="bi bi-bar-chart"></i>
                <span>WEB DESIGN</span>
                <p class="separator">To an English person, it will seem like simplified English,told me what </p>
              </div>
            </div><!-- End testimonial item 

            <div class="swiper-slide">
              <div class="services-block">
                <i class="bi bi-binoculars"></i>
                <span>MOBILE APPS</span>
                <p class="separator">To an English person, it will seem like simplified English,told me what </p>
              </div>
            </div><!-- End testimonial item 

            <div class="swiper-slide">
              <div class="services-block">
                <i class="bi bi-brightness-high"></i>
                <span>Analytics</span>
                <p class="separator">To an English person, it will seem like simplified English,told me what </p>
              </div>
            </div><!-- End testimonial item 

            <div class="swiper-slide">
              <div class="services-block">
                <i class="bi bi-calendar4-week"></i>
                <span>PHOTOGRAPHY</span>
                <p class="separator">To an English person, it will seem like simplified English,told me what </p>
              </div>
            </div><!-- End testimonial item 

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>

    </div><!-- End Services Section -->
    
    <!-- ======= Portfolio Section ======= -->
   < <div id="portfolio" class="paddsection">

      <div class="container">
        <div class="section-title text-center">
          <h2>Something You Need</h2>
        </div>
      </div>

      <div class="container">

        <div class="row">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <!--<li data-filter=".filter-app">App</li>
              <li data-filter=".filter-card">Card</li>
              <li data-filter=".filter-web">Web</li>-->
            </ul>
          </div>
        </div>

         
        <div class="row portfolio-container">

          

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="assets/img/portfolio/wed991.jpg" class="img-fluid" alt="">
           <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" ForeColor="#E91E63" style="padding:10px; margin-top:20px; border: 2px groove green; font-weight:bold; text-decoration: underline;">Uploading invitation</asp:LinkButton>
           
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/portfolio/gue.jpg" class="img-fluid" alt="">
            
            <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" ForeColor="#E91E63" style="padding:10px; margin-top:20px; border: 2px groove green; font-weight:bold; text-decoration: underline;">Add Guests</asp:LinkButton>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="assets/img/portfolio/catr1.jpg" class="img-fluid" alt="">
            
           <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" ForeColor="#E91E63" style="padding:10px; margin-top:20px; border: 2px groove green; font-weight:bold; text-decoration:'underline'">Invite Guests</asp:LinkButton>
          </div>

        </div>

      </div>

    </div><!-- End Portfolio Section -->

    <!-- ======= Journal Section ======= -->
    <div id="journal" class="text-left paddsection">

      <div class="container">
        <div class="section-title text-center">
          <h2>journal</h2>
        </div>
      </div>

      <div class="container">
        <div class="journal-block">
          <div class="row">

            <div class="col-lg-4 col-md-6">
              <div class="journal-info">

                <a href="blog-single.html"><img src="assets/img/phot.jpg" class="img-responsive" alt="img"></a>

                <div class="journal-txt">

                  <h4><a href="blog-single.html">Photography is the most important part of wedding</a></h4>
                  <p class="separator">
                  </p>

                </div>

              </div>
            </div>

            <div class="col-lg-4 col-md-6">
              <div class="journal-info">

                <a href="blog-single.html"><img src="assets/img/dec99.jpg" class="img-responsive" alt="img"></a>

                <div class="journal-txt">

                  <h4><a href="blog-single.html">Be with each other forever</a></h4>
                  <p class="separator">
                  </p>

                </div>

              </div>
            </div>

            <div class="col-lg-4 col-md-6">
              <div class="journal-info">

                <a href="blog-single.html"><img src="assets/img/catring2.jpg" class="img-responsive" alt="img"></a>

                <div class="journal-txt">

                  <h4><a href="blog-single.html">NEW LIFE CIVILIZATIONS TO BOLDLY</a></h4>
                  <p class="separator">Start your new life
                  </p>

                </div>

              </div>
            </div>

          </div>
        </div>
      </div>

    </div><!-- End Journal Section -->

    <!-- ======= Contact Section ======= -->
    <div id="contact" class="paddsection">
      <div class="container">
        <div class="contact-block1">
          <div class="row">

            <div class="col-lg-6">
              <div class="contact-contact">

                <h2 class="mb-30">Contact Us</h2>

                <!--ul class="contact-details">
                  <li><span>23 Main, Street</span></li>
                  <li><span>New York, United States</span></li>
                  <li><span>+88 01912704287</span></li>
                  <li><span>example@example.com</span></li>
                </ul-->

              </div>
            </div>

            <div class="col-lg-6">
              
                <div class="row gy-3">

                  <div class="col-lg-6">
                    <div class="form-group contact-block1">
                      <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                    </div>
                  </div>

                  <div class="col-lg-6">
                    <div class="form-group">
                      <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                    </div>
                  </div>

                  <div class="col-lg-12">
                    <div class="form-group">
                      <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Subject"></asp:TextBox>
                    </div>
                  </div>

                  <div class="col-lg-12">
                    <div class="form-group">
                      <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Message" TextMode="MultiLine"></asp:TextBox>
                    </div>
                  </div>

                  <div class="col-lg-12">
                    <div class="loading"></div>
                    <div class="error-message"></div>
                    <div class="sent-message"></div>
                  </div>

                  <div class="mt-0">
                    <asp:Button ID="Button1" runat="server" class="btn btn-defeault btn-send" 
                          Text="Send Message" onclick="Button1_Click"></asp:Button>                  </div>

                </div>
</form>
            </div>
          </div>
        </div>
      </div>
    </div><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <div id="footer" class="text-center">
    <div class="container">
      <div class="socials-media text-center">

        <ul class="list-unstyled">
          <li><a href="#"><i class="bi bi-facebook"></i></a></li>
          <li><a href="#"><i class="bi bi-twitter"></i></a></li>
          <li><a href="#"><i class="bi bi-instagram"></i></a></li>
          <li><a href="#"><i class="bi bi-linkedin"></i></a></li>
        </ul>

      </div>

      <p>&copy;</p>

      <div class="credits">
        
        Designed by <a href="">AC- Ananya & Chitransh</a>
      </div>

    </div>
  </div><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/typed.js/typed.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>