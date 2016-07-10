<%@include file="Header.jsp"%>


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
