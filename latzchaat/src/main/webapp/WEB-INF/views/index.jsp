<%@include file="Header.jsp"%>

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
						<span class="glyphicon glyphicon-log-in"></span> <a href="Login">LOGIN</a>
						<span class="glyphicon glyphicon-user"></span> <a href="Register">NEW
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
	<%--
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