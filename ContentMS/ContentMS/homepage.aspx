<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="ContentMS.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link href="css/creative.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/style.css"/>
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
          <div class="carousel slide" data-ride="carousel" id="featured" >
        
              <ol class="carousel-indicators">
                <li data-target ="#featured" data-slide-to="0" class="active"></li>
                <li data-target ="#featured" data-slide-to="1"></li>
                <li data-target ="#featured" data-slide-to="2"></li>
              </ol>
            <div class="carousel-inner">

              <div class="item active">
                <img src="images/right3.jpeg" alt="Lifestyle Photo"/>
                    <div class="carousel-caption">
                      <div id="logo">
                        <img src="images/wapp.png"/>
                      </div>
                      <div id="text">
                        <h2>WAPP</h2>
                        <p>Content Management System</p>
                      </div>
                    </div>

              </div>
            <div class="item">
              <img src="images/right4.jpeg" alt="Mission"/>
              <div class="carousel-caption">
                  <div id="logo">
                    <img src="images/wapp.png"/>
                  </div>
                  <div id="text">
                    <h2>WAPP</h2>
                    <p>Content Management System</p>
                  </div>
                </div>
            </div>
            <div class="item">
              <img src="images/right.jpeg" alt="Vaccinations"/>
              <div class="carousel-caption">
                  <div id="logo">
                    <img src="images/wapp.png"/>
                  </div>
                  <div id="text">
                    <h2>WAPP</h2>
                    <p>Content Management System</p>
                  </div>
                </div>
            </div>
            </div><!--carousel-inner-->
              <a  class="left carousel-control" href="#featured" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
              </a>

              <a  class="right carousel-control" href="#featured" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
              </a>
          </div><!--carousel-->
      
          <div id="mySidenav" class="sidenav">
            <a href="homepage.aspx" id="about">Home</a>
            <a href="homepage.aspx#services" id="blog">Service</a>
            <a href="homepage.aspx#portfolio" id="projects">Products</a>
            <asp:HyperLink ID="contact" runat="server">Store</asp:HyperLink>
          </div>
        </header>
        <div class="container-fluid">
            <div class="row"> 
                <section id="welcome">
                  <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-8 text-center col-lg-offset-2 col-md-offset-2 col-sm-offset-2">
                      <h3 class="section-heading strong">We've got what you need!</h3>
                      <hr class="light my-4">
                      <p>As the concept of lifelong learning now becomes a reality and thus more and more people are partaking in online courses, researchers are constantly exploring innovative techniques to motivate online students and enhance the e-learning experience.  </p>
                      <asp:Button ID="abutton" runat="server" Text="Get Started!" class="btn btn-default" href="#services" OnClick="abutton_Click"></asp:Button>
                    </div>
                  </div>
                </section>
                <section id="services">
                    <div class="row">
                      <div class="col-sm-12 col-md-6 col-lg-6 text-center  col-md-offset-1 col-sm-offset-1">
                        <div class="container">
                             <h2 class="section-heading">At Your Service</h2>
                              <hr class="my-4">
                        </div>
                    </div>
                  </div>
                  <div class="container">
                    <div class="row">
                      <div class="col-lg-3 col-md-6 col-lg-offset-1 col-md-offset-1 text-center">
                        <div class="service-box mt-5 mx-auto">
                          <i class="fa fa-4x  fa-folder-o text-primary mb-3 sr-icons"></i>
                          <h3 class="mb-3">Storage Space</h3>
                          <p class="text-muted mb-0">What you bring, we keep.</p>
                        </div>
                      </div>
                      <div class="col-lg-3 col-md-6 text-center col-lg-offset-1 col-md-offset-1">
                        <div class="service-box mt-5 mx-auto">
                          <i class="fa fa-4x fa-cloud-upload text-primary mb-3 sr-icons"></i>
                          <h3 class="mb-3">Ready Upload</h3>
                          <p class="text-muted mb-0">Upload any course material now to share with someone!</p>
                        </div>
                      </div>
                      <div class="col-lg-3 col-md-6 col-lg-offset-1 col-md-offset-1 text-center">
                        <div class="service-box mt-5 mx-auto">
                          <i class="fa fa-4x fa-cloud-download text-primary mb-3 sr-icons"></i>
                          <h3 class="mb-3">Ready Download</h3>
                          <p class="text-muted mb-0">Download any course material of your choice.</p>
                        </div>
                      </div>
              
                    </div>
                  </div>
                </section>
                <section class="p-0" id="portfolio">
                  <div class="container-fluid p-0">
                    <div class="row no-gutters popup-gallery">
                      <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/p1.jpg">
                          <img class="img-fluid" src="img/portfolio/thumbnails/p1.jpeg" alt=""/>
                          <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                              <div class="project-category text-faded">
                                <i class="fa fa-4x fa-cloud-download mb-3 sr-icons"></i>
                              </div>
                              <div class="project-name">
                                Available for download
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                      <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/p2.jpg">
                          <img class="img-fluid" src="img/portfolio/thumbnails/p2.jpeg" alt=""/>
                          <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                              <div class="project-category text-faded">
                                <i class="fa fa-4x fa-cloud-download mb-3 sr-icons"></i>
                              </div>
                              <div class="project-name">
                                Available for download
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                      <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/p3.jpg">
                          <img class="img-fluid" src="img/portfolio/thumbnails/p3.jpeg" alt=""/>
                          <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                              <div class="project-category text-faded">
                                <i class="fa fa-4x fa-cloud-download mb-3 sr-icons"></i>
                              </div>
                              <div class="project-name">
                                Available for download
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                      <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/p4.png">
                          <img class="img-fluid" src="img/portfolio/thumbnails/p4.jpeg" alt=""/>
                          <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                              <div class="project-category text-faded">
                                <i class="fa fa-4x fa-cloud-download mb-3 sr-icons"></i>
                              </div>
                              <div class="project-name">
                                Available for download
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                      <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/p5.jpg">
                          <img class="img-fluid" src="img/portfolio/thumbnails/p5.jpeg" alt=""/>
                          <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                              <div class="project-category text-faded">
                                <i class="fa fa-4x fa-cloud-download mb-3 sr-icons"></i>
                              </div>
                              <div class="project-name">
                                Available for download
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                      <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/p6.jpg">
                          <img class="img-fluid" src="img/portfolio/thumbnails/p6.jpeg" alt=""/>
                          <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                              <div class="project-category text-faded">
                                <i class="fa fa-4x fa-cloud-download mb-3 sr-icons"></i>
                              </div>
                              <div class="project-name">
                                Available for download
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                    </div>
                  </div>
                </section>
                <section id="black">
                  <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-8 text-center col-lg-offset-2 col-md-offset-2 col-sm-offset-2">
                      <h2 class="mb-4">Free Download at WAPP Store!</h2>
                        <asp:Button ID="Button1" runat="server" Text="Download Now!" class="btn btn-light btn-xl sr-button" href="#services" OnClick="Button1_Click"></asp:Button>
                    </div>
                  </div>
                </section>
            </div>
        </div>

    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    </form>
</body>
</html>
