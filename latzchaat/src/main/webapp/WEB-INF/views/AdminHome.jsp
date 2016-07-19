<%@include file="AdminHeader.jsp"%>

<body>
	<div class="container-fluid">
		<div class="row">

			<div class="col-md-3 col-sx-3">
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				<form:form action="edit/${userDetail.id}" commandName="userDetail">
					<img src="resources/images/niitdigi.jpg" class="img-circle"
						height="300" width="300" />
				</form:form>
				<div></div>
			</div>

			<div class="col-md-7 col-sx-7 ">




				<div class="container">
					<h2>Welcome Admin</h2>
					<ul class="nav nav-tabs">
						<li class="active"><a href="#home">Home</a></li>
						<li><a href="#menu1">Blogs</a></li>
<!-- 						<li><a href="#menu2">Chat Forum</a></li> -->
						<li><a href="#menu3">Jobs</a></li>
						<!-- <li><a href="#menu4">Bulletin</a></li> -->
					</ul>

					<div class="tab-content">
						<div id="home" class="tab-pane fade in active">
							<h3>HOME</h3>
							<p>Welcome Admin.</p>
						</div>
						<div id="menu1" class="tab-pane fade">
							<div>
								<div class="container">


									<div class="row"></div>
									<p>&nbsp; &nbsp;</p>
									<div class="container">
										<div class="row">

											<div class="section">
												<div class="container">
													<div class="row">
														<div class="col-md-12">
															<form:form class="form-horizontal" role="form"
																action="${session.getContextPath()}/latzchaat/InsertAdminBlog"
																modelAttribute="blog" commandName="blog" method="post">

																<div class="form-group">
																	<c:if test="${!empty blog.blogid}">

																		<div class="col-sm-2">
																			<label for="blogid" class="control-label">Blog
																				ID</label>
																		</div>
																		<div class="col-sm-10">
																			<form:input type="text" class="form-control"
																				id="blogid" path="blogid" readonly="true"
																				disabled="true" />
																			<form:hidden path="blogid" />
																		</div>
																	</c:if>
																</div>


																<div class="form-group">
																	<div class="col-sm-2">
																		<label for="title" class="control-label">Title</label>
																	</div>
																	<div class="col-sm-10">
																		<form:input type="text" class="form-control"
																			id="title" path="title" placeholder="Title" />
																	</div>
																</div>
																<div class="form-group">
																	<div class="col-sm-2">
																		<label for="description" class="control-label">Description</label>
																	</div>
																	<div class="col-sm-10">
																		<form:input type="text" class="form-control"
																			id="description" placeholder="Description"
																			path="description" />
																	</div>
																</div>
																<div class="form-group">
																	<div class="col-sm-2">
																		<label for="detail" class="control-label">Write
																			blog</label>
																	</div>
																	<div class="col-sm-10">
																		<form:textarea class="form-control" id="detail"
																			path="detail" placeholder="Write details" rows="10"
																			cols="100" />
																	</div>
																</div>
																<div class="form-group">
																	<div class="col-sm-2">
																		<label for="status" class="control-label">Status</label>
																	</div>
																	<div class="col-sm-10">
																		<form:input type="text" class="form-control"
																			id="status" placeholder="Status" path="status" />
																	</div>
																</div>
																<div class="form-group">
																	<div class="col-sm-2">
																		<label for="owner" class="control-label">Owner</label>
																	</div>
																	<div class="col-sm-10">
																		<form:input type="text" class="form-control"
																			id="owner" placeholder="Owner" path="owner" />
																	</div>
																</div>
																<div class="form-group">
																	<div class="col-sm-offset-2 col-sm-10">
																		<c:if test="${!empty blog.title}">
																			<!-- <input type="submit" class="btn btn-info" value="Update" /> -->
																			<button type="submit" class="btn btn-info">
																				Update <span class="glyphicon glyphicon-edit"></span>
																			</button>
																		</c:if>
																		<c:if test="${empty blog.title}">
																			<button type="submit" class="btn btn-info">
																				Add <span class="glyphicon glyphicon-check	"></span>
																			</button>
																		</c:if>
																	</div>
																</div>
															</form:form>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>

									<div class="container">
										<div class="row">
											<div class="col-md-12 col-sm-12 col-xs-12">


												<h3>Blog List</h3>
												<c:if test="${!empty blogs}">
													<table class="tg table table-striped">
														<tr style="background: #a2cad3; color: white">
															<th width="80">Blog ID</th>
															<th width="120">Title</th>
															<th width="120">Description</th>

															<th width="120">Status</th>
															<th width="120">Owner</th>
															<th width="60">Update</th>
															<th width="60">Delete</th>
														</tr>
														<c:forEach items="${blogs}" var="blog">
															<tr>
																<td>${blog.blogid}</td>
																<td>${blog.title}</td>
																<td>${blog.description}</td>

																<td>${blog.status}</td>
																<td>${blog.owner}</td>
																<td><a class="btn btn-info"
																	href="<c:url value='/Admin/updateBlog/${blog.blogid}' />">Update
																		<span class="glyphicon glyphicon-edit"></span>
																</a></td>
																<td><a class="btn btn-danger"
																	href="<c:url value='/Admin/deleteBlog/${blog.blogid}' />">Delete
																		<span class="glyphicon glyphicon-remove-sign"></span>
																</a></td>
															</tr>
														</c:forEach>
													</table>
												</c:if>
											</div>
										</div>
									</div>
									<!--  -->

								</div>
							</div>
						</div>
						<div id="menu2" class="tab-pane fade">
<%-- 							<h3>Chat Forum </h3>
							
<%@page import="com.latzchaat.model.UserDetails" %>

<c:url var="addAction" value="/Forum/add"></c:url>
  <aside class="callout">
      <div class="text-vertical-center"></div>
    </aside>


<%UserDetails user=(UserDetails)request.getAttribute("user"); %>

<div class="row">
          <div class="col-md-12">
            <h1>Add a New Forum Post</h1>
          </div>
        </div>

<div class="well">
	
			   

              <form:form role="form" commandName="forum" action="${addAction}">
               <form:errors path="category" cssClass="error"/><br/>
               <form:errors path="title" cssClass="error"/><br/>
               <form:errors path="content" cssClass="error"/><br/>
			   
			   <div class="form-group">
                  <label class="control-label">Category</label>
                  <form:input class="form-control" placeholder="Enter Category" type="text" path="category"/>
                </div>
			   
                <div class="form-group">
                  <label class="control-label">Title</label>
                  <form:input class="form-control" placeholder="Enter Title" type="text" path="title"/>
                </div>
               
                <div class="form-group">
                  <label class="control-label">Content
                  </label>
                  <form:textarea class="form-control" placeholder="Enter Content" rows="10" path="content"></form:textarea>
                </div>
               
                <button type="submit" class="btn btn-default">Post in Forum</button>
              </form:form>
            </div>
            
            
<div  ng-app="repeatSample" class="section">
	<div class="container">
	




		<!-- Angular script to generate the productlist and sorting -->
		<!-- ============================================================================================== -->

		<script>
			var f = ${forums};

			angular.module('repeatSample', []).controller('repeatController',
					function($scope) {
						$scope.forums = f;

						$scope.sort = function(keyname) {
							$scope.sortKey = keyname; //set the sortKey to the param passed
							$scope.reverse = !$scope.reverse; //if true make it false and vice versa
						}

					});
		</script>

		<!-- Textbox used to implement search option using Angular -->
		<!-- ============================================================================================== -->

		<div class="bs-component" ng-controller="repeatController">

			<form class="form-inline">
				<div class="form-group">
					<label>Search</label> <input type="text" ng-model="search"
						class="form-control" placeholder="Search">
				</div>
			</form>


			<!-- table to show data coming from the JSON file -->
			<!-- ============================================================================================== -->


			<table class="table table-striped table-hover">
				<thead>
					<tr>

						<!-- Performing sort functionality using angular both in ascending and descending manner -->
						<!-- ============================================================================================== -->
						<th ng-click="sort('category')">Category <span
							class="glyphicon sort-icon" ng-show="sortKey=='name'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						
						<th ng-click="sort('title')">Title <span
							class="glyphicon sort-icon" ng-show="sortKey=='name'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('content')">Content <span
							class="glyphicon sort-icon" ng-show="sortKey=='price'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('user')">User <span
							class="glyphicon sort-icon" ng-show="sortKey=='category'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('date')">Date <span
							class="glyphicon sort-icon" ng-show="sortKey=='category'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th>More Info</th>

					</tr>
				</thead>
				<tbody>
					<!-- dynamically generating the table data -->
					<!-- ============================================================================================== -->

					<tr
						ng-repeat="forum in forums|orderBy:sortKey:reverse|filter:search">
						<td>{{forum.category}}</td>
						<td>{{forum.title}}</td>
						<td>{{forum.content}}</td>
						<td>{{forum.date}}</td>
						<td>{{forum.user}}</td>


						<!-- Info button that maps to the ProductDetails view. Required Info for ProductDetails view is passed through request parameters -->
						<!-- ============================================================================================== -->

						<td><a
							href="/musichub/ProductDetails?id={{product.id}}&name={{product.name}}&desc={{product.desc}}&brand={{product.brand}}&price={{product.price}}"><i
								class="fa fa-3x fa-fw fa-exclamation-circle"></i></a></td>
					</tr>
				</tbody>
			</table>

		</div>
	</div>
</div>

							

 --%>							

							​
						</div>
						<div id="menu3" class="tab-pane fade">
							<h3>Job Opportunities</h3>
							<div class="container">
							
							

<div class="container">
	<div class="row">

		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<form:form class="form-horizontal" role="form"
							action="${session.getContextPath()}/latzchaat/InsertJob"
							modelAttribute="job" commandName="job" method="post">

							<div class="form-group">
								<c:if test="${!empty job.jobid}">

									<div class="col-sm-2">
										<label for="jobid" class="control-label">Job ID</label>
									</div>
									<div class="col-sm-10">
										<form:input type="text" class="form-control" id="jobid"
											path="jobid" readonly="true" disabled="true" />
										<form:hidden path="jobid" />
									</div>
								</c:if>
							</div>


							<div class="form-group">
								<div class="col-sm-2">
									<label for="profile" class="control-label">Profile</label>
								</div>
								<div class="col-sm-10">
									<form:input type="text" class="form-control" id="profile"
										path="profile" placeholder="Profile" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-2">
									<label for="description" class="control-label">Description</label>
								</div>
								<div class="col-sm-10">
									<form:textarea rows="5" cols="100" class="form-control"
										id="description" placeholder="Description" path="description" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-2">
									<label for="company" class="control-label">Company</label>
								</div>
								<div class="col-sm-10">
									<form:input type="text" class="form-control" id="company"
										path="company" placeholder="Company Name" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-2">
									<label for="salary" class="control-label">Salary</label>
								</div>
								<div class="col-sm-10">
									<form:input type="text" class="form-control" id="salary"
										placeholder="Salary" path="salary" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-2">
									<label for="address" class="control-label">Interview
										Address</label>
								</div>
								<div class="col-sm-10">
									<form:input type="text" class="form-control" id="address"
										placeholder="Interview Address" path="address" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-2">
									<label for="date" class="control-label">Interview Date</label>
								</div>
								<div class="col-sm-10">
									<form:input type="text" class="form-control" id="date"
										placeholder="Interview Date" path="date" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-2">
									<label for="eligibility" class="control-label">Eligibility</label>
								</div>
								<div class="col-sm-10">
									<form:input type="text" class="form-control" id="eligibility"
										placeholder="Eligibility" path="eligibility" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<c:if test="${!empty job.profile}">
										<!-- <input type="submit" class="btn btn-info" value="Update" /> -->
										<button type="submit" class="btn btn-info">
											Update <span class="glyphicon glyphicon-edit"></span>
										</button>
									</c:if>
									<c:if test="${empty job.profile}">
										<button type="submit" class="btn btn-info">
											Add <span class="glyphicon glyphicon-check	"></span>
										</button>
									</c:if>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">


			<h3>Jobs List</h3>
			<c:if test="${!empty jobs}">
				<table class="tg table table-striped">
					<tr style="background: #a2cad3; color: white">
						<th width="80">Job ID</th>
						<th width="120">Profile</th>
						<th width="60">Job Description</th>
						<th width="60">Company</th>
						<th width="80">Salary</th>
						<th width="120">Interview Address</th>
						<th width="60">Date</th>
						<th width="60">Eligibility</th>
						<th width="60">Update</th>
						<th width="60">Delete</th>
					</tr>
					<c:forEach items="${jobs}" var="job">
						<tr>
							<td>${job.jobid}</td>
							<td>${job.profile}</td>
							<td>${job.description}</td>
							<td>${job.company}</td>
							<td>${job.salary}</td>
							<td>${job.address}</td>
							<td>${job.date}</td>
							<td>${job.eligibility}</td>
							<td><a class="btn btn-info"
								href="<c:url value='/UpdateJob/${job.jobid}' />">Update
									<span class="glyphicon glyphicon-edit"></span>
							</a></td>
							<td><a class="btn btn-danger"
								href="<c:url value='/DeleteJob/${job.jobid}' />">Delete
									<span class="glyphicon glyphicon-remove-sign"></span>
							</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
	</div>
</div>
							
							
							</div>
							<hr>


						</div>
						<div id="menu4" class="tab-pane fade">
							<h3>Bulletin</h3>
							<div class="container"></div>
							<hr>


						</div>
					</div>
				</div>

				<script>
					var app = angular.module("search", []).controller(
							"productTable", function($scope) {
								$scope.products = $
								{
									data
								}
								;
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