<%-- <%@include file="Header.jsp"%>

<div class="container">
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4"></div>
		<div class="col-md-4">


			<!-- <h1><i>NIIT DIGINXT</i></h1> -->


			<article>
				<!--  <h2><a href="singlepost.html">ABOUT NIIT </a></h2>  -->

				<div class="row">
					<div class="group1 col-sm-6 col-md-6">
						<span class="glyphicon glyphicon-log-in"></span> <a href="${session.getContextPath()}/latzchaat/Login">LOGIN</a>
						<span class="glyphicon glyphicon-user"></span> <a href="${session.getContextPath()}/latzchaat/Register">NEW
							USER</a>,

					</div>
					<div class="group2 col-sm-6 col-md-6">
						<span class="glyphicon glyphicon-pencil"></span> <a
							href="singlepost.html#comments">20 Comments</a>

					</div>

				</div>
		</div>
	</div>
</div>


<hr />



<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div id="imageslider" class="carousel slide" data-ride="carousel">

				<ol class="carousel-indicators">
					<li data-target="#imageslider" data-slide-to="0" class="active"></li>
					<li data-target="#imageslider" data-slide-to="1"></li>
					<li data-target="#imageslider" data-slide-to="2"></li>

				</ol>
				<center>
					<div class="carousel-inner">

						<div class="item active">
							<img class="img-rounded"
								style="height: 450px; background-size: cover;"
								src="<c:url value="${imgs }/niitstudent.jpg"/>" />
						</div>
						<div class="item">
							<img class="img-rounded"
								style="height: 450px; background-size: cover; width: 100%"
								src="<c:url value="${imgs }/niitstudent_banner1.jpg"/>" />
						</div>
						<div class="item">
							<img class="img-rounded"
								style="height: 450px; background-size: cover; width: 100%"
								src="<c:url value="${imgs }/niitstudent.jpg"/>" />
						</div>


					</div>
				</center>

				<a class="carousel-control left" href="#imageslider"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="carousel-control right" href="#imageslider"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
	</div>








	<article>
		<p class="text-right">
			<a href="singlepost.html"> continue reading... </a>
		</p>



	</article>




	<!-- 		<div class="col-md-4">
			<div class="well text-center">
				<p class="lead">Please click the below button!! FOR ANY ENQUIRY
				</p>

				<p>
					<a href="Contact" target="_blank" class="btn btn-primary btn-lg">Customer
						Query &raquo;</a>
				</p>
				  <button class="btn btn-primary btn-lg">Customer Query</button>
			</div> -->

	<div class="row">
		<div class="col-md-2">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4>Latest Posts</h4>
				</div>
				<ul class="list-group">
					<li class="list-group-item"><a href="#">Vendor Exam Under
							Maintenance<img src="resources/images/new.jpg" />
					</a></li>
					<li class="list-group-item"><a href="#">NEW DT Batch <img
							src="resources/images/new.jpg" /></a></li>
					<li class="list-group-item"><a href="#">JAVA Batch<img
							src="resources/images/new.jpg" /></a></li>
					<li class="list-group-item"><a href="#">C++ Batch<img
							src="resources/images/new.jpg" /></a></li>

				</ul>
			</div>
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-3">
			<div class="panel panel-default content-wrapper">
				<div class="panel-heading">
					<h4>Student Speak</h4>
				</div>
				<div>
				<img src="<c:url value="${imgs }/Student1.jpg"/>"/>
				<i>The faculty were top-notch as I expected. They provided ample information regarding the subjects and cleared my doubts or obstacles that came in the way.</i>
				</div>
			</div>
		</div>
</div>
<div class="row">
		<div class="col-md-2">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4>Categories</h4>
				</div>
				<ul class="list-group">
					<li class="list-group-item"><a href="#">Services</a></li>
					<li class="list-group-item"><a href="#">Academic Zones</a></li>
					<li class="list-group-item"><a href="#">About New Courses</a></li>
					<li class="list-group-item"><a href="#"></a></li>

				</ul>
			</div>
		
	</div>
	</div>
	
			<!-- <div class="panel panel-default">
    <div class="panel-heading">
        <h4>Recent Comments</h4>
    </div>
    <ul class="list-group">
        <li class="list-group-item"><a href="#">I don't believe in astrology but still your writing style is really great! - <em>john</em></a></li>
        <li class="list-group-item"><a href="#">Wow.. what you said is really true! I'm an aries though - <em>Anto</em></a></li>
        <li class="list-group-item"><a href="#">Does capricorn and aries is compatibile? - <em>Sarah</em></a></li>
        <li class="list-group-item"><a href="#">I'm a cancer woman been in love with Leo. Will this work? - <em>Mary</em></a></li>
    </ul>
</div>
 -->









		</div>



	</div>




</div>









<div class="container-fluid">
	<div class="row">
		<div class="col-xs-4">

			<p>
				<img src="resources/images/home4.jpg" />
			</p>
			<p>
				<a href="http://www.tutorialrepublic.com/html-tutorial/"
					target="_blank" class="btn btn-success">Learn More &raquo;</a>
			</p>
		</div>
		<div class="col-xs-4">

			<p>
				<img src="resources/images/home4.jpg" />
			</p>
			<p>
				<a href="http://www.tutorialrepublic.com/css-tutorial/"
					target="_blank" class="btn btn-success">Learn More &raquo;</a>
			</p>
		</div>
		<div class="col-xs-4">

			<p>
				<img src="resources/images/home4.jpg" />
			</p>
			<p>
				<a
					href="http://www.tutorialrepublic.com/twitter-bootstrap-tutorial/"
					target="_blank" class="btn btn-success">Learn More &raquo;</a>
			</p>
		</div>
	</div>
	<hr>
	<!--  <div class="row">
            <div class="col-xs-12">
                <footer>
                    <p>&copy; Copyright 2013 Tutorial Republic</p>
                </footer>
            </div>
        </div> -->
</div>

<%@include file="Footer.jsp"%>
 --%>
 
 
 
 
 <%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<c:set var="imgs" value="/resources/images" />
<c:set var="btstrpcss" value="/resources/bootstrap/css" />
<c:set var="btstrpjs" value="/resources/bootstrap/js" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script src="<c:url value="${btstrpjs}/bootstrap.min.js"/>"></script>
<!-- <script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>

<link rel="stylesheet"
	href="<c:url value="${btstrpcss}/bootstrap.min.css"/>">

<%-- <script src="<c:url value="${btstrpjs}/angular.min.js"/>"></script>
 --%>
<script src="<c:url value="${btstrpjs}/bootstrap.js"/>"></script>
<link rel="stylesheet"
	href="<c:url value="${btstrpcss}/bootstrap-theme.min.css"/>">


 
 
 
 <html>
  
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
    rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
    rel="stylesheet" type="text/css">
  </head>
  
  <body>
    <div class="cover">
      <div class="navbar">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><img src="<c:url value="${imgs }/logo.png"/>"></a>
          </div>
          <div class="collapse navbar-collapse" id="navbar-ex-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="active">
                <a style="color:white;" href="${session.getContextPath()}/latzchaat/index">Home</a>
              </li>
              <li>
                <a style="color:white;" href="#">Contacts</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <!-- <div class="cover-image" style="background-image: url(https://unsplash.imgix.net/photo-1418065460487-3e41a6c84dc5?q=25&amp;fm=jpg&amp;s=127f3a3ccf4356b7f79594e05f6c840e);"></div> -->
      <div class="cover-image" style="background-image: url(/latzchaat/resources/images/about-us.jpg)"></div>
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <h1 class="text-inverse">Latzchaat</h1>
            <p class="text-inverse">Alluminai for NIIT Students</p>
            <br>
            <br>
            <a class="btn btn-lg btn-primary" href="${session.getContextPath()}/latzchaat/Login">Login</a>
            <a class="btn btn-lg btn-primary" href="${session.getContextPath()}/latzchaat/Register">Register</a>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <img src="<c:url value="${imgs }/Student1.jpg"/>" class="img-responsive"/>
            
          </div>
          <div class="col-md-6">
            <h1 class="text-primary">Student Speak</h1>
            <h3>A subtitle</h3>
            <p>
            I came to NIIT with the hope of gathering knowledge from the IT Education pioneer 
            and getting a job in a renowned IT company was my greatest aspiration. 
            The career counselors really helped me a lot in deciding and paving a way out to get the right job. 
            The faculty were top-notch as I expected. They provided ample information regarding the subjects 
            and cleared my doubts or obstacles that came in the way. The environment was friendly 
            and cheerful and there was a challenging atmosphere. Today, I am happy to say that NIIT kept its word and placed me 
            in a great MNC company "ATOS". So in simple words "HATS OFF" to the NIIT team especially the placement coordinator. 
            The grooming sessions were really helpful and provided the edge I needed to battle the interviews as I was from an 
            entirely different educational background. The training molded me to suit the current IT employment scenario. 
            We had rigorous technical and non-technical mock-sessions to improve our skills and 
            face the interviews and be prepared to answers any questions the interviewer threw at us. 
            The career guidance team really paved the way for success and I owe it all to them for providing me a job,
            I dreamt of. They were there in every step of my journey and provided me the intellect that was immensely 
            required to secure not a good, but a 'great' job. I can never forget the immense time and care they have taken 
            in providing me with a great job. I am truly grateful to Ms. Rupa Sengupta and Mrs. Arati Nandi of the placement team 
            and always hold them in high regard. THANKS A LOT..  AND KUDOS TO THE NIIT TEAM.
            </p>
        
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1 class="text-primary">A title</h1>
            <h3>A subtitle</h3>
            <p>I would like to thank NIIT for helping me to get a job. The team of NIIT supported a lot. Even though I am from BSc, the faculty helped me to develop my IT skills from the basics to a standard level. The grooming sessions which were provided to me by the NIIT training team really helped me to develop the character, personality and confidence which was needed to get a good job. I'm really thankful to all the staff and all my faculty members who has taught me and helped me. I feel very proud to be associated with such a good brand called "NIIT". I would to share my experience to crack any interview of your choic.. The first impression should be a very confident one. No matter how nervous you are from inside but make sure that you are confident from outside. Think before going to any interview that "the organization needs you more that you need an organization". Be confident... All the best..</p>
          </div>
          <div class="col-md-6">
            <img src="<c:url value="${imgs }/Student1.jpg"/>" class="img-responsive"/>
            
          </div>
        </div>
      </div>
    </div>
    
  </body>

</html>
 
 
 