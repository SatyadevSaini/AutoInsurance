<!DOCTYPE html>
<html>
    <head>
        <title>Auto Insurance</title>
        <link rel="icon" href="resource/autoinsurance-icon.png"/>
        
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
        
        <!-- AOS css and JS -->
        <link rel="stylesheet" href="resource/aos/aos.css">
        <script src="resource/aos/aos.js"></script>
        <!-- AOS css and JS END-->

        <!-- fontawesome -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!-- fontawesome END -->


        <!-- custom css-->
        <link rel="stylesheet" href="resource/custom.css"/>
        <!-- custom css END-->

        <meta name="author" content="Reetu Chauhan"/>
        <meta name="description" content="This is a Auto Insurance website"/>
        <meta name="keywords" content="best Insurance comapny in Gurugram"/>
    </head>
    <body>
        <nav class="navbar navbar-expand-sm sticky-top bg-light">
            <a class="navbar-brand c-font" href="index.jsp">
              <img src='resource/autoinsurance-icon.png' width="30px"/> <span class="text-danger font-weight-bold ">Auto</span><span class="text-muted">Insurance</span>
            </a>
            <button class="navbar-toggler bg-light" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <!-- <span class="navbar-toggler-icon text-dark"> <i class="fas fa-sort-down"></i> </span> -->
                <span class="fa fa-bars"></span> Menu
            </button>
            <div class="collapse navbar-collapse " id="collapsibleNavbar"  >
              <ul class="navbar-nav mx-auto ">
                <li class="nav-item">
                  <a class="nav-link text-secondary" href="index.jsp">HOME</a>
                </li>  
              </ul>
              <div >
                  <a class="text-danger h5 mr-3" href="tel:+91-8882193090">CALL US TODAY: +91-8882193090</a>
              </div>
            </div>
        </nav>
        <section class="my-5">
          <div class="container">
            <div class="row align-items-center">
              <div class="col-md-6" data-aos="fade-right" data-aos-duration="1000">
                <img class="img-fluid" src="resource/image1.jpg"" alt="" >
              </div>
              <div class="col-md-6">
                  <p><i class="fas fa-map-marker-alt"></i>Gurugram, Near Iffco Chowk, Haryana (110001).</p>
                  <p><i class="fas fa-mobile-alt"></i> 7007XXXXXX, 8572XXXXXX.</p>
                  <p><i class="fas fa-envelope"></i> chauhanreetu00@gmail.com</p>
                  <hr/>
              </div>
            </div>
          </div>
        </section>
        <section class="my-5">
          <div class="container">
            <iframe class="w-100" height="300px" src="https://www.google.com/search?sxsrf=AOaemvILKc8REJJcVtlgpIzmqVTlwC3rTg:1639162095924&q=alpha+2+greater+noida+live+location&spell=1&sa=X&ved=2ahUKEwjd2tLT8tn0AhVITGwGHYaSAeMQkeECKAB6BAgCEDE" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
          </div>
        </section>
       <footer class="bg-dark p-4">
		<p class="text-white">
			Design by <a href="https://www.linkedin.com/in/reetu-chauhan-117090222/" target="_blank">Reetu Chauhan</a>
			&copy; Rights reserved &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Social Media: <a
				href="https://www.facebook.com/settings?tab=account&section=username"><i class="fab fa-facebook"></i></a>
			&nbsp; <a href="https://www.instagram.com/alphaq_xd"><i
				class="fab fa-instagram"></i></a>
		</p>
	</footer>

        <a id="myTopBtn"><i class="fas fa-chevron-circle-up display-4 text-danger"></i></a>

    </body>
    <script>
      AOS.init();
      
      //Script for Scroll to Top button for hide and show
      $(window).scroll(function() {
          if ($(this).scrollTop()) {
              $('#myTopBtn').fadeIn();
          } else {
              $('#myTopBtn').fadeOut();
          }
      });
      //script for scroll to top
      $("#myTopBtn").click(function () {
        $("html, body").animate({scrollTop: 0}, 1000);
      });

      //script for Google Sheet
      const scriptURL = 'https://script.google.com/macros/s/AKfycbwmOkfD6saCOWTr8qZWOtRcWz5X74Yn1fiWePRXU-JceE8DfQKzeMqj_z1uSj1f_d48/exec';
      const form = document.forms['google-sheet'];
      form.addEventListener('submit', e => {
      e.preventDefault()
      fetch(scriptURL, { method: 'POST', body: new FormData(form)})
        .then(response => alert("Thanks for Contacting us..! We Will Contact You Soon..."))
        .catch(error => console.error('Error!', error.message))
      });
    </script>
</html>