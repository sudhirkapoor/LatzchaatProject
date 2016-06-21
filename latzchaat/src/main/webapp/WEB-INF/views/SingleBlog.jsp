<%@include file="Header.jsp"%>
<h1>${blog.blogid}</h1>


<div class="container">
	<div class="row">
		<div class="col-xs-12 col-md-12">
			<form:form modelAttribute="blog" class="">
				<div class="row">
					<div class="col-xs-6 col-md-6">
						<form:label path="${title}">Title</form:label>
						<form:label path="${title}" class="form-control">${blog.title}</form:label>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6 col-md-6">
						<form:label path="${owner}">Owner</form:label>
						<form:label path="${owner}" class="form-control">${blog.owner}</form:label>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6 col-md-6">
						<form:label path="${description}">Description</form:label>
						<form:label path="${description}" class="form-control">${blog.description}</form:label>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6 col-md-8">
						<form:label path="${detail}" class="form-control">Detail</form:label>
						<form:label path="${detail}" class="form-control">${blog.detail}</form:label>
					</div>

				</div>
			</form:form>
		</div>
	</div>
</div>