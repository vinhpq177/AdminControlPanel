<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html dir="ltr" lang="en-US" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bouncing Data</title>
<link rel="stylesheet" href="<c:url value="/css/1140.css"/>" type="text/css" media="screen">
<link rel="stylesheet" href="<c:url value="/css/styles.css"/>" type="text/css" media="screen">
<link rel="stylesheet" href="<c:url value="/css/default.css"/>" type="text/css" media="screen">
<link href="<c:url value="/css/css"/>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<c:url value="/js/custom.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery.uniform.min.js"/>"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<!-- Forms Elemets -->
<link rel="stylesheet" href="<c:url value="/css/uniform.default.css"/>" type="text/css" media="screen">
<style>
.errorblock {
	color: #ff0000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>
<body class="texture">
	<div class="container">
		<div class="row">
			<div class="panel-wrapper panel-login">
				<div class="panel">
					<div class="title">
						<h4>Login Form</h4>
					</div>
					<div class="content">
						<!-- ## Panel Content  -->
						<form name='f' action="<c:url value='j_spring_security_check' />" method="post">
							<div>
								<input type="text" name="j_username" id="j_username" value="username" onblur="if(value=='') value = 'username'" onfocus="if(value=='username') value = ''">
							</div>
							<div>
								<input type="password" name="j_password" id="j_password" value="password" onblur="if(value=='') value = 'password'" onfocus="if(value=='password') value = ''">
							</div>
							<div>
								<input type="submit" class="button-blue" value="Login" style="padding: 9px 12px;">
							</div>
						</form>
						<!-- ## / Panel Content  -->
					</div>
				</div>
				<div class="shadow"></div>
			</div>
			<div class="login-details">
				<c:if test="${not empty error}">
					<div class="errorblock">
						Your login attempt was not successful, try again.<br /> Caused :
						${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
					</div>
				</c:if>
				<p>
					Forgot your password? &nbsp;&nbsp;&nbsp;<a href="#">Click here</a>
				</p>
			</div>
		</div>
	</div>
</body>
</html>
