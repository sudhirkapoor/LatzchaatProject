<%@include file="Header.jsp"%>

<body>
<div class="container-fluid">
	<div class="row">

		<div class="col-md-3 col-sx-3">
		&nbsp;
		&nbsp;
		&nbsp;
		&nbsp;
		&nbsp;
		<form:form action="edit/${userDetail.id}" commandName="userDetail">
			<img src="resources/images/${userDetail.id}.jpg" class="img-circle" height="300" width="300"/> 
				</form:form>
			<div></div>
		</div>

		<div class="col-md-7 col-sx-7 ">




			<div class="container">
				<h2>Dynamic Tabs</h2>
				<ul class="nav nav-tabs">
					<li class="active"><a href="#home">Home</a></li>
					<li><a href="#menu1">Blogs</a></li>
					<li><a href="#menu2">Chat</a></li>
					<li><a href="#menu3">Profile</a></li>
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

				 <a href="${session.getContextPath()}/latzchaat/CreateBlog"><span class="glyphicon glyphicon-share"></span>Create New</a>

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

<!-- 							
							<td><p>{{p.blogid}}</p>
								<p>{{p.owner}}</p></td> -->
						 	 <td>
								<form action="${session.getContextPath()}/latzchaat/SingleBlog"  method="post" >
								
								<!-- <h2><a type="submit" href="">{{p.title}}</a></h2> -->
							
								<input type="hidden" value="{{p.blogid}}" name="blogid"/>
								<input type="hidden" value="{{p.title}}" name="title"/>
								<input type="hidden" value="{{p.owner}}" name="owner"/>
								<input type="hidden" value="{{p.description}}" name="description"/>
								<input type="hidden" value="{{p.detail}}" name="detail"/>
									<h1><button type="submit" class="btn btn-link">{{p.title}}</button></h1>
									<p>{{p.title}}</p>
								<p>{{p.blogid}}</p>
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
						
<div id="disqus_thread"></div>
<script>
    /**
     *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
     *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
     */
    /*
    var disqus_config = function () {
        this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
        this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
    };
    */
    (function() {  // REQUIRED CONFIGURATION VARIABLE: EDIT THE SHORTNAME BELOW
        var d = document, s = d.createElement('script');
        
        s.src = '//EXAMPLE.disqus.com/embed.js';  // IMPORTANT: Replace EXAMPLE with your forum shortname!
        
        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>​
					</div>
					<div id="menu3" class="tab-pane fade">
						<h3>Profile</h3>
			
			<style>#form{backgroung-color:#ffa366;}</style>			   
 <div class="container" >
  <form:form id="form" action="UpdateUser"  class="form-horizontal well"  commandName="userDetail">
    <h1>Edit Profile</h1>
  	<hr>
	<div  class="row">
      <!-- left column -->
      <div class="col-md-4">
        <div class="text-center">
         
    <img src="resources/images/${userDetail.id}.jpg" class="img-circle" height="300" width="300"/> 
         
          
        </div>
      </div>
     
      <!-- edit form column -->
    <div class="col-md-8 personal-info">
        <div class="alert alert-info alert-dismissable">
          <a class="panel-close close" data-dismiss="alert">×</a> 
          <i class="fa fa-coffee"></i>
        <strong>STUDENT INFO</strong>
        </div> 
      <!--   <h3>Student info</h3> -->
        
       <!--  <form class="form-horizontal" role="form">
         -->
        
        <div class="form-group">
            <%-- <label class="col-lg-3 control-label">ID:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="id"  value="${user.id}" readonly="true"/>
            </div>
          </div> --%>
          <div class="form-group">
            <label class="col-lg-3 control-label">First name:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="fname" /> 
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Last name:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="lname" />
            </div>
          </div>
         
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="email" />
            </div>
          </div>
         
          <div class="form-group">
            <label class="col-md-3 control-label">Mobile:</label>
            <div class="col-md-8">
              <form:input class="form-control" path="mobile" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Zipcode:</label>
            <div class="col-md-8">
              <form:input class="form-control" path="zipcode" />
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-md-3 control-label">City:</label>
            <div class="col-md-8">
              <form:input class="form-control" path="city" />
            </div>
          </div>
          
          
           <div class="form-group">
            <label class="col-md-3 control-label">GENDER:</label>
            <div class="col-md-8">
              <form:input class="form-control" path="gender" />
            </div>
          </div>
         
          <div class="form-group">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
            
           
           
          <input type="submit" class="btn btn-default" value="Update">
              <input type="reset" class="btn btn-default" value="Cancel">
            </div>
          </div>
      <!--   </form> -->
      </div>
  </div>
  </form:form>
</div>
<hr> 
							
							
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
	

</body>