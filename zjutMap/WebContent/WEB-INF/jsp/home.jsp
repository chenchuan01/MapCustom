<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@include file="base/baseh.jspf" %>
	<!-- TABLE CLOTH -->
	<link rel="stylesheet" type="text/css" href="${ctx }/static/js/tablecloth/css/tablecloth.min.css" />
	<!-- FONTS -->
	<link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
</head>
<body>
	<!-- HEADER -->
	<header class="navbar clearfix" id="header">
		<div class="container">
				<!-- COMPANY LOGO -->
				<h3 style="display: inline;color: #fff;">
					<b>Web Map For ZJUT</b>
				</h3>
				<!-- /COMPANY LOGO -->
				<!-- NAVBAR LEFT -->
				<ul class="nav navbar-nav pull-left hidden-xs" id="navbar-left">
					<!-- <li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-cog"></i>
							<span class="name">Skins</span>
							<i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu skins">
							<li class="dropdown-title">
								<span><i class="fa fa-leaf"></i> Theme Skins</span>
							</li>
							<li><a href="#" data-skin="default">Subtle (default)</a></li>
							<li><a href="#" data-skin="night">Night</a></li>
							<li><a href="#" data-skin="earth">Earth</a></li>
							<li><a href="#" data-skin="utopia">Utopia</a></li>
							<li><a href="#" data-skin="nature">Nature</a></li>
							<li><a href="#" data-skin="graphite">Graphite</a></li>
						 </ul>
					</li> -->
				</ul>
				<!-- /NAVBAR LEFT -->
				<!-- BEGIN TOP NAVIGATION MENU -->					
				<ul class="nav navbar-nav pull-right">
					<li class="dropdown" id="header-user">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-user"></i>
							<span class="username">${sysuser.name }(${sysuser.userName })</span>
							<i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="javascript:;" onclick="autoWin('信息修改', 'sys/userForm.do?id=${sysuser.id}',300,350)"><i class="fa fa-cog"></i>信息修改</a></li>
							<li><a href="login/logout.do"><i class="fa fa-power-off"></i> 安全退出</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-cog"></i>
							<span class="name">Skins</span>
							<i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu skins">
							<li class="dropdown-title">
								<span><i class="fa fa-leaf"></i> Theme Skins</span>
							</li>
							<li><a href="javascript:;" data-skin="default">Subtle (default)</a></li>
							<li><a href="javascript:;" data-skin="night">Night</a></li>
							<li><a href="javascript:;" data-skin="earth">Earth</a></li>
							<li><a href="javascript:;" data-skin="utopia">Utopia</a></li>
							<li><a href="javascript:;" data-skin="nature">Nature</a></li>
							<li><a href="javascript:;" data-skin="graphite">Graphite</a></li>
						 </ul>
					</li>
				</ul>
				<!-- END TOP NAVIGATION MENU -->
		</div>
		
		<!-- TEAM STATUS -->
		<!-- /TEAM STATUS -->
	</header>
	<!--/HEADER -->
	
	<!-- PAGE -->
	<section id="page">
		<div id="main-content">
			<div class="container">
				<div class="row">
					<div id="content" class="col-lg-12">
						<!-- PAGE HEADER-->
						<div class="row">
							<div class="col-sm-12">
								<div class="page-header">
									<div class="clearfix">
										<h5 class="content-title pull-left">Simple Tables</h5>
									</div>
									<div class="description">Simple Tables with exclusive UI experience</div>
								</div>
							</div>
						</div>
						<!-- /PAGE HEADER -->
					</div>
					
					<div class="footer-tools">
							<span class="go-top">
								<i class="fa fa-chevron-up"></i> Top
							</span>
						</div>
					</div>
					<!-- /CONTENT-->
				<div class="separator"></div>
			</div>
		</div>
	</section>
	<!--/PAGE -->
	<%@include file="base/basef.jspf" %>
	<!-- TABLE CLOTH -->
	<script type="text/javascript" src="${ctx }/static/js/tablecloth/js/jquery.tablecloth.js"></script>
	<script type="text/javascript" src="${ctx }/static/js/tablecloth/js/jquery.tablesorter.min.js"></script>
	<script>
		jQuery(document).ready(function() {		
			App.setPage("simple_table");  //Set current page
			App.init(); //Initialise plugins and elements
		});
	</script>
	<!-- /JAVASCRIPTS -->
</body>
</html>
