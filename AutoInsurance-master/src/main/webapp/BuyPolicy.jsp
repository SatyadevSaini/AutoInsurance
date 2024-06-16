<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${userName==null}">
	<% 
	session.setAttribute("result","Plz login First");
	response.sendRedirect("/"); 
	%>
</c:if>
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

        <!-- Lightbox CSS & Script -->
        <script src="resource/lightbox/ekko-lightbox.js"></script>
        <link rel="stylesheet" href="resource/lightbox/ekko-lightbox.css"/>

        

        <!-- custom css-->
        <link rel="stylesheet" href="resource/custom.css"/>
        <!-- custom css END-->

        <meta name="author" content="Rahul Chauhan"/>
        <meta name="description" content="This is a Auto Insurance website"/>
        <meta name="keywords" content="best Insurance comapny in noida"/>
    </head>
    <body>
    	<nav class="navbar navbar-expand-sm sticky-top bg-light">
            <img class="navbar-brand c-font" src='resource/autoinsurance-icon.png' width="30px"/> <span class="text-danger font-weight-bold ">Auto</span><span class="text-muted">Insurance</span>
            
            <button class="navbar-toggler bg-light" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <!-- <span class="navbar-toggler-icon text-dark"> <i class="fas fa-sort-down"></i> </span> -->
                <span class="fa fa-bars"></span> Menu
            </button>
            <div class="collapse navbar-collapse " id="collapsibleNavbar"  >
              <ul class="navbar-nav mx-auto ">
                <li class="nav-item">
                  <a class="nav-link text-secondary" href="/">HOME</a>
                </li>
                <li class="nav-item">
                	
                	<label class="nav-link"> Welcome: 
                	<b>${userName}</b> 
                	<img src="getUserImage?email=${userEmail}" height="30px"/>
                	</label>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-secondary" href="UserProfile">Profile</a>
                </li>  
                <li class="nav-item"><a class="nav-link text-secondary"
					href="UserPolicies">View Policies</a></li>
                <li class="nav-item">
                  <a class="nav-link text-secondary" href="Logout">Logout</a>
                </li>    
              </ul>
              <div >
                  <a class="text-danger h5 mr-3" href="tel:+91-9811981198">CALL US TODAY: +91-9811981198</a>
              </div>
            </div>
        </nav>
        <c:if test="${result!=null}">
        	<p style='background-color:yellow;text-align:center;padding:10px;'> ${result} </p>
        </c:if>
       	<div class='container p-4'>
   			<div class='bg-light p-3' >
   				<form action='ConfirmPurchase' method='post'>
   					<label>Vehicle Registration No:</label>
   					<input type="text" name="v_no" required/>
   					<label>Vehicle Engine No:</label>
   					<input type="text" name="e_no" required/>
   					<input type="hidden" name="pid" value="${pid}"/>
   					<input type="hidden" name="c_email" value="${c_email}"/>
   					<button class='btn btn-success' type='submit'>Confirm Purchase</button>
   				</form>
   			</div>
       	</div>
            
            
        <footer class="bg-dark p-4">
          <p class="text-white">
            Design by <a href="https://www.incapp.in" target="_blank">INCAPP</a> &copy; Rights reserved
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Social Media: 
            <a href="https://facebook.com/incapp"><i class="fab fa-facebook"></i></a>
            &nbsp;
            <a href="https://instagram.com/incapp.in"><i class="fab fa-instagram"></i></a>
          </p>
        </footer>
        
    </body>
</html>