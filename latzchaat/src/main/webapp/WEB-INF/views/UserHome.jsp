<%@include file="Header.jsp"%>

<body>
<div class="container-fluid">
	<div class="row">

		<div class="col-md-3 col-sx-3">
			<img style="height: 400px; width: 300px" src=""
				alt="User Profile Image"></img>
			<div></div>
		</div>

		<div class="col-md-7 col-sx-7 ">




			<div class="container">
				<h2>Dynamic Tabs</h2>
				<ul class="nav nav-tabs">
					<li class="active"><a href="#home">Home</a></li>
					<li><a href="#menu1">Menu 1</a></li>
					<li><a href="#menu2">Menu 2</a></li>
					<li><a href="#menu3">Menu 3</a></li>
				</ul>

				<div class="tab-content">
					<div id="home" class="tab-pane fade in active">
						<h3>HOME</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
					<div id="menu1" class="tab-pane fade">
						<div ng-app="search">
	<div class="container" ng-controller="productTable">

		<div class="row">
			<div class="col-md-8"></div>

			<div class="col-md-4 input-group">

				<label>Search your Blog</label> <input type="search"
					ng-model="searchText" class="form-control" id="inputSearch"
					placeholder="Search Here" />
				<!-- <input type="search" ng-model="searchText.city" class="form-control" id="inputSearch" placeholder="Search Here"/> -->

			</div>
		</div>
		<div class="row">
			<div class="col-md-8"></div>

			<div class="col-md-4 input-group">

				 <a href=""><span class="glyphicon glyphicon-share"></span>Create New</a>

			</div>
		</div>
		<p>&nbsp; &nbsp;</p>
		<div class="container">
		<div class="row">

			

			<div class="col-xs-12 col-md-12">

				<table class="table-responsive table-hover table-striped" style="width: 100%">
					<thead>
					</thead>

					<tbody>

						<tr ng-repeat="p in products | filter:searchText" class="table-responsive">

							
							
						 	 <td>
								<form action="${session.getContextPath()}/autobazaar/ProductDetail"  method="post" >
								
								<h2><a href="">{{p.title}}</a></h2>
								<p>{{p.detail}}</p>
								<p>{{p.owner}}</p>
									 
								</form>
							</td>


						</tr>

					</tbody>

				</table>

			</div>
		</div>
	</div>

</div>
		</div>				
					</div>
					<div id="menu2" class="tab-pane fade">
						<h3>Menu 2</h3>
						<p>Sed ut perspiciatis unde omnis iste natus error sit
							voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
					</div>
					<div id="menu3" class="tab-pane fade">
						<h3>Menu 3</h3>
						<p>Eaque ipsa quae ab illo inventore veritatis et quasi
							architecto beatae vitae dicta sunt explicabo.</p>
					</div>
				</div>
			</div>

			<script>
			var app = angular.module("search", []).controller("productTable",
					function($scope) {
						$scope.products = ${data};
					}); 
			
				$(document).ready(function() {
					$(".nav-tabs a").click(function() {
						$(this).tab('show');
					});
				});
			</script>

		</div>
	</div>
	




	<%-- <script>
$(document).ready(function(){
    $(".tabbable").find(".tab").hide();
       $(".tabbable").find(".tab").first().show();
       $(".tabbable").find(".tabs li").first().find("a").addClass("active");
       $(".tabbable").find(".tabs").find("a").click(function(){
           tab = $(this).attr("href");
           $(".tabbable").find(".tab").hide();
           $(".tabbable").find(".tabs").find("a").removeClass("active");
           $(tab).show();
           $(this).addClass("active");
           return false;
       });
});
</script>

<div class="container-fluid">
	<div class="row">

		<div class="col-md-3 col-sx-3">
			<img style="height: 400px; width: 300px" src=""
				alt="User Profile Image"></img>
			<div></div>
		</div>

		<div class="col-md-7 col-sx-7 ">


			<nav class="navbar navbar-inverse">
  <div>
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      
    </div>
    <div class="collapse navbar-collapse tabbable" id="myNavbar">
      <ul class="nav navbar-nav tabs">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Home</a></li>
        <li><a href="${session.getContextPath()}/latzchaat/ViewBlogs">Blogs</a></li> 
        <li><a href="#">Chat</a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="#">Search Friends</a></li> 
      </ul>
      
    </div>
  </div>
</nav>

<div id="first" class="tab">
Content of the tab
</div >


	</div>
</div> --%>
</body>