<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html dir="ltr" lang="en-US" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>Bouncing Data Control Panel</title> <!-- 1140px Grid styles for IE -->
			<!--[if lte IE 9]><link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" /><![endif]-->
			<!-- The 1140px Grid -->
			<link rel="stylesheet" href="<c:url value="/css/1140.css"/>"
				type="text/css" media="screen">
				<link rel="stylesheet" href="<c:url value="/css/styles.css"/>"
					type="text/css" media="screen">
					<!--css3-mediaqueries-js - http://code.google.com/p/css3-mediaqueries-js/ - Enables media queries in some unsupported browsers-->
					<script type="text/javascript"
						src="<c:url value="/js/css3-mediaqueries.js"/>"></script>
					<!-- Fonts -->
					<link href="<c:url value="/css/css"/>" rel="stylesheet"
						type="text/css">
						<!-- Scripts -->
						<script
							src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
						<!-- WYSISYG Editor -->
						<script type="text/javascript"
							src="<c:url value="/js/nicEdit.js"/>"></script>
						<!-- Forms Elemets -->
						<script type="text/javascript"
							src="<c:url value="/js/jquery.uniform.min.js"/>"></script>
						<link rel="stylesheet"
							href="<c:url value="/css/uniform.default.css"/>" type="text/css"
							media="screen">
							<!-- Table sorter -->
							<script type="text/javascript"
								src="<c:url value="/js/jquery.tablesorter.min.js"/>"></script>
							<script type="text/javascript"
								src="<c:url value="/js/resizable.tables.js"/>"></script>
							<script type="text/javascript"
								src="<c:url value="/js/custom.js"/>"></script>
</head>

<body>

	<!-- Menu top -->
	<div id="header-wrapper" class="container">
		<div id="user-account" class="row">
			<div class="threecol">
				<span>Welcome to Bouncing Data Control Panel</span>
			</div>
			<div class="ninecol last">
				<a href="<c:url value="/logout"/>">Logout</a> <span>|</span> <a
					href="#">My account</a> <span>|</span> <span>Welcome, <strong>${username}!</strong></span>
			</div>
		</div>
		<div id="user-options" class="row">
			<div class="threecol">
				<a href="#"> <img class="logo"
					src="<c:url value="/images/back-logo.png"/>" style="opacity: 1;" />
				</a>
			</div>
			<div>
				<ul class="nav-user-options">
					<li><a href="#"><img
							src="<c:url value="/images/icon-menu-profile.png"/>"
							alt="Profile Settings">&nbsp; Profile</a></li>
					<li><a href="#"><img
							src="<c:url value="/images/icon-menu-messages.png"/>"
							alt="Messages">&nbsp; Messages</a></li>
					<li><a href="#"><img
							src="<c:url value="/images/icon-menu-tasks.png"/>" alt="Tasks">&nbsp;
								Task</a></li>
					<li><a href="#"><img
							src="<c:url value="/images/icon-menu-users.png"/>" alt="Users">&nbsp;
								User list</a></li>
					<li><a href="#"><img
							src="<c:url value="/images/icon-menu-settings.png"/>"
							alt="Settings">&nbsp; Settings <img class="pin"
								src="<c:url value="/images/back-nav-sub-pin.png"/>" alt=""></a>
						<ul>
							<li class="first"><a href="#">Item number 01</a></li>
							<li><a href="#">Item number 02</a></li>
							<li><a href="#">Item number 03</a></li>
							<li class="last"><a href="#">Item number 04</a></li>
							<li class="pin"></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- End Menu top -->

	<div class="container">
		<div class="row">

			<!-- Left menu -->
			<div id="sidebar" class="threecol">
				<ul id="navigation">
					<li class="active first"><a href="#">Dashboard <span
							class="icon-dashboard"></span>
					</a></li>
					<li><a href="#">Charts <span class="icon-charts"></span>
					</a></li>
					<li><a href="#">Form Elements <span class="icon-forms"></span>
					</a></li>
					<li><a href="#">Interface Elements <span
							class="icon-elements"></span>
					</a></li>
					<li><a href="#">Tables <span class="icon-tables"></span>
					</a></li>
					<li><a href="#">Gallery <span class="icon-gallery"></span>
					</a></li>
					<li class="sub active"><a href="#">Statistics <img
							src="<c:url value="/images/back-nav-sub-pin.png"/>"
							alt=""> <span class="icon-error"></span></a>
						<ul style="display: block;">
							<li><a href="<c:url value="/vizday"/>">views/viz/day</a></li>
							<li><a href="<c:url value="/vizcreateusr"/>">viz created/user</a></li>
							<li><a href="#">reshared, cloned/viz</a></li>
							<li><a href="#">no viz in timeline/user/day</a></li>
							<li><a href="#">search/user</a></li>
							<li class="last"><a href="#">comments/viz</a></li>
						</ul>
					</li>
					<li><a href="#">F.A.Q. <span class="icon-faq"></span></a></li>
					<li class="last"><a href="#">Calendar <span
							class="icon-calendar"></span>
					</a></li>
				</ul>
			</div>
			<!-- End Left menu -->

			<!-- Main Content -->
			<div id="content" class="ninecol last">
				<div class="panel-wrapper fixed">
					<jsp:include page="${requestScope.body}" />
				</div>
			</div>
			<div name="tempDiv" id="tempDiv"></div>
			<!-- End Main Content -->
		</div>
	</div>
</body>
</html>