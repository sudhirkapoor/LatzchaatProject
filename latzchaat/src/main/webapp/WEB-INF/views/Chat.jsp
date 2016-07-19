

<!DOCTYPE HTML>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
  <head>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet" type="text/css" />
    <link href="resources/css/demo.css" rel="stylesheet" type="text/css" />
    
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <style type="text/css">
    
.navbar-default {
	background-color: #CC0000;
}

.dropdown-submenu {
	position: relative;
}
.navbar-text>a {
	color: inherit;
	text-decoration: none;
}

.header {
	color: #36A0FF;
	font-size: 27px;
	padding: 10px;
}

.bigicon {
	font-size: 35px;
	color: #36A0FF;
}
    </style>
  </head>
  <body ng-app="chatApp">
  	<%-- <header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav"
		role="banner">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target=".bs-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="${session.getContextPath()}/latzchaat/index" class="navbar-brand">Letzchaat</a>
			</div>
			
			<nav class="collapse navbar-collapse bs-navbar-collapse"
				role="navigation">



				<ul class="nav navbar-nav">
				<c:if test="${pageContext.request.userPrincipal.name!=null}">
					<li class="active"><a
						href="${session.getContextPath()}/latzchaat/UserHome">Home</a></li>
						</c:if>
					<li><a href="${session.getContextPath()}/latzchaat/Contact">Contact</a></li>
					<li><a href="${session.getContextPath()}/latzchaat/About">About US</a></li>
				</ul>
<c:url value="/perform_logout" var="logout" />
			<form action="${logout}" method="post" id="logout">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csfr.token}" />

			</form>
				<ul class="nav navbar-nav navbar-right">
					<c:if test="${pageContext.request.userPrincipal.name!=null}">
						<li class="scroll" style="color: white"><a href="#">${pageContext.request.userPrincipal.name}</a></li>
						<li class="scroll"><a href="javascript:formSubmit()">LOGOUT</a></li>
						<security:authentication var="user"	property="principal.authorities" />
						<security:authorize var="LoggedIn" access="isAuthenticated()">
							<security:authorize access="hasRole('ROLE_ADMIN')">
               ADMIN
                </security:authorize>
							<security:authorize access="hasRole('ROLE_USER')">
                USER
                </security:authorize>
						</security:authorize>
					</c:if>
				</ul>
			</nav>
		</div>
	</header>
 --%>  
    <div ng-controller="ChatCtrl" class="container">
      <form ng-submit="addMessage()" name="messageForm">
        <input type="text" placeholder="Compose a new message..." ng-model="message" />
        <div class="info">
          <span class="count" ng-bind="max - message.length" ng-class="{danger: message.length > max}">140</span>
          <button ng-disabled="message.length > max || message.length === 0">Send</button>
        </div>
      </form>
      <hr />
      <p ng-repeat="message in messages | orderBy:'time':true" class="message">
      	<span>{{message.username}}</span>
        <time>{{message.time | date:'HH:mm'}}</time>
        <span ng-class="{self: message.self}">{{message.message}}</span>
      </p>
    </div>
    <link rel="stylesheet"
	href="resources/css/bootstrap.min.css">
    <script src="resources/libs/sockjs/sockjs.min.js" type="text/javascript"></script>
    <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="resources/libs/stomp-websocket/lib/stomp.min.js" type="text/javascript"></script>
    <script src="resources/libs/angular/angular.min.js"></script>
    <script src="resources/libs/lodash/dist/lodash.min.js"></script>
    <script src="resources/js/app.js" type="text/javascript"></script>
    <script src="resources/js/controllers.js" type="text/javascript"></script>
    <script src="resources/js/services.js" type="text/javascript"></script>
  </body>
</html>
