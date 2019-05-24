<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <title> About Hotel</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700|Work+Sans:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="n/css/bootstrap.min.css">
    <link rel="stylesheet" href="n/css/magnific-popup.css">
    <link rel="stylesheet" href="n/css/jquery-ui.css">
    <link rel="stylesheet" href="n/css/owl.carousel.min.css">
    <link rel="stylesheet" href="n/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="n/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="n/css/animate.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">
    
    
    
    <link rel="stylesheet" href="n/fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="n/css/aos.css">

    <link rel="stylesheet" href="n/css/style.css">
    
  </head>
  <body>
  <form action="AmountServlet">
  <c:forEach var="hotell" items="${hotell}">
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    
    
  
  
    
    <div class="slide-one-item home-slider owl-carousel">
      
      <div class="site-blocks-cover overlay" style="background-image: url(n/images/hero_1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-7 text-center" data-aos="fade">
              <input type="hidden" value="${hotell.name}" name="hname">
              <h1 class="mb-2">${hotell.name}</h1>
             <!-- <h2 class="caption">Hotel &amp; Resort</h2>-->
            </div>
          </div>
        </div>
      </div>  

      <div class="site-blocks-cover overlay" style="background-image: url(n/images/hero_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-7 text-center" data-aos="fade">
              <h1 class="mb-2">${hotell.name}</h1>
              
            </div>
          </div>
        </div>
      </div> 

      <div class="site-blocks-cover overlay" style="background-image: url(n/images/hero_3.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-7 text-center" data-aos="fade">
              <h1 class="mb-2">${hotell.name}</h1>
              
            </div>
          </div>
        </div>
      </div> 

    </div>
</c:forEach>
    <div class="site-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-6 mx-auto text-center mb-5 section-heading">
            <h2 class="mb-5">Our Rooms</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-4 mb-5">
            <div class="hotel-room text-center">
            
              <a class="d-block mb-0 thumbnail"><input type="image" src="n/images/img_1.jpg" alt="Image" class="img-fluid"></a>
              
              <div class="hotel-room-body">
                <h3 class="heading mb-0"><a href="#">Standard Room</a></h3>
                <strong class="price"  >Rs2,499 / per night</strong>
              </div>
             <button type="submit" name="price" value="2499" class="btn btn-primary">Book</button>
            </div>
            
          </div>
          <div class="col-md-6 col-lg-4 mb-5">
            <div class="hotel-room text-center">
              <a  class="d-block mb-0 thumbnail"><input type="image" id="price1" name="price1" value="3999" src="n/images/img_2.jpg" alt="Image" class="img-fluid"></a>
              <div class="hotel-room-body">
                <h3 class="heading mb-0"><a href="#">Family Room</a></h3>
                <strong class="price">Rs3,999 / per night</strong>
              </div>
               <button type="submit" name="price" value="3999" class="btn btn-primary">Book</button>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5">
            <div class="hotel-room text-center">
              <a href="#" class="d-block mb-0 thumbnail"><img src="n/images/img_3.jpg" alt="Image" class="img-fluid"></a>
              <div class="hotel-room-body">
                <h3 class="heading mb-0"><a href="#">Single Room</a></h3>
                <strong class="price">Rs1,499 / per night</strong>
              </div>
              <button type="submit" name="price" value="1499" class="btn btn-primary">Book</button>
            </div>
            
          </div>

          <div class="col-md-6 col-lg-4 mb-5">
            <div class="hotel-room text-center">
              <a href="#" class="d-block mb-0 thumbnail"><img src="n/images/delux.jpg" alt="Image" class="img-fluid"></a>
              <div class="hotel-room-body">
                <h3 class="heading mb-0"><a href="#">Deluxe Room</a></h3>
                <strong class="price">Rs3,499 / per night</strong>
              </div>
              <button type="submit" name="price" value="1499" class="btn btn-primary">Book</button>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5">
            <div class="hotel-room text-center">
              <a href="#" class="d-block mb-0 thumbnail"><img src="n/images/lux.jpg" alt="Image" class="img-fluid"></a>
              <div class="hotel-room-body">
                <h3 class="heading mb-0"><a href="#">Luxury Room</a></h3>
                <strong class="price">Rs5,999 / per night</strong>
              </div>
              <button type="submit" name="price" value="5999" class="btn btn-primary">Book</button>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5">
            <div class="hotel-room text-center">
              <a href="#" class="d-block mb-0 thumbnail"><img src="n/images/2.jpg" alt="Image" class="img-fluid"></a>
              <div class="hotel-room-body">
                <h3 class="heading mb-0"><a href="#">King Room</a></h3>
                <strong class="price">Rs7,499 / per night</strong>
              </div>
              <button type="submit" name="price" value="7499" class="btn btn-primary">Book</button>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="site-section">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6 mb-5 mb-md-0">
            
              <div class="img-border">
                <iframe width="1090" height="445" src="n/images/video.mp4">
                </iframe>

                
           
                
                

              </div>

             
            
          </div>
          <!--div class="col-md-5 ml-auto">
            

            <div class="section-heading text-left">
              <h2 class="mb-5">About Us</h2>
            </div>
            <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque, nisi Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit nobis magni eaque velit eum, id rem eveniet dolor possimus voluptas..</p>
            <p><a href="images/video.mp4" class="popup-vimeo text-uppercase">Watch Video <span class="icon-arrow-right small"></span></a></p>
          </div-->
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-6 mx-auto text-center mb-5 section-heading">
            <h2 class="mb-5">Hotel Features</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center p-4 item">
              <span class="flaticon-pool display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Swimming Pool</h2>
            </div>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center p-4 item">
              <span class="flaticon-desk display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Hotel Teller</h2>
            </div>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center p-4 item">
              <span class="flaticon-exit display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Fire Exit</h2>
            </div>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center p-4 item">
              <span class="flaticon-parking display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Car Parking</h2>
            </div>
          </div>

          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center p-4 item">
              <span class="flaticon-hair-dryer display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Hair Dryer</h2>
            </div>
          </div>

          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center p-4 item">
              <span class="flaticon-minibar display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Minibar</h2>
            </div>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center p-4 item">
              <span class="flaticon-drink display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Drinks</h2>
            </div>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="text-center p-4 item">
              <span class="flaticon-cab display-3 mb-3 d-block text-primary"></span>
              <h2 class="h5">Car Airport</h2>
            </div>
          </div>

          

          

          

        </div>
      </div>
    </div>
    
    

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-6 mx-auto text-center mb-5 section-heading">
            <h2 class="mb-5">Our Gallery</h2>
          </div>
        </div>
        <div class="row no-gutters">
          <div class="col-md-6 col-lg-3">
            <a href="n/images/img_1.jpg" class="image-popup img-opacity"><img src="images/img_1.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-md-6 col-lg-3">
            <a href="n/images/img_2.jpg" class="image-popup img-opacity"><img src="images/img_2.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-md-6 col-lg-3">
            <a href="n/images/img_3.jpg" class="image-popup img-opacity"><img src="images/img_3.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-md-6 col-lg-3">
            <a href="n/images/img_4.jpg" class="image-popup img-opacity"><img src="images/img_4.jpg" alt="Image" class="img-fluid"></a>
          </div>

          <div class="col-md-6 col-lg-3">
            <a href="n/images/img_4.jpg" class="image-popup img-opacity"><img src="images/img_4.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-md-6 col-lg-3">
            <a href="n/images/img_5.jpg" class="image-popup img-opacity"><img src="images/img_5.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-md-6 col-lg-3">
            <a href="n/images/img_6.jpg" class="image-popup img-opacity"><img src="images/img_6.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-md-6 col-lg-3">
            <a href="n/images/img_7.jpg" class="image-popup img-opacity"><img src="images/img_7.jpg" alt="Image" class="img-fluid"></a>
          </div>

        </div>
      </div>
    </div>
    




    

    

    
    
  </div>

  <script src="n/js/jquery-3.3.1.min.js"></script>
  <script src="n/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="n/js/jquery-ui.js"></script>
  <script src="n/js/popper.min.js"></script>
  <script src="n/js/bootstrap.min.js"></script>
  <script src="n/js/owl.carousel.min.js"></script>
  <script src="n/js/jquery.stellar.min.js"></script>
  <script src="n/js/jquery.countdown.min.js"></script>
  <script src="n/js/jquery.magnific-popup.min.js"></script>
  <script src="n/js/bootstrap-datepicker.min.js"></script>
  <script src="n/js/aos.js"></script>

  
  <script src="n/js/mediaelement-and-player.min.js"></script>

  <script src="n/js/main.js"></script>
    

  <script>
      document.addEventListener('DOMContentLoaded', function() {
                var mediaElements = document.querySelectorAll('video, audio'), total = mediaElements.length;

                for (var i = 0; i < total; i++) {
                    new MediaElementPlayer(mediaElements[i], {
                        pluginPath: 'https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/',
                        shimScriptAccess: 'always',
                        success: function () {
                            var target = document.body.querySelectorAll('.player'), targetTotal = target.length;
                            for (var j = 0; j < targetTotal; j++) {
                                target[j].style.visibility = 'visible';
                            }
                  }
                });
                }
            });
    </script>
</form>
  </body>
</html>