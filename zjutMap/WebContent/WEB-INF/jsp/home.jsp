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
				<div class="navbar-brand">
					<!-- COMPANY LOGO -->
					<h3 style="display: inline;color: #fff;">
						<b>Web Map</b>
					</h3>
					<!-- /COMPANY LOGO -->
				</div>
				
				<!-- NAVBAR LEFT -->
				<ul class="nav navbar-nav pull-left hidden-xs" id="navbar-left">
					<li class="dropdown">
						<a href="javascript:;" class="team-status-toggle dropdown-toggle tip-bottom" data-toggle="tooltip" title="Map Navigation">
							<i class="fa fa-globe"></i>
							<span class="name">导航地图</span>
						</a>
					</li>
					<li class="dropdown">
						<a href="javascript:;" class="team-status-toggle dropdown-toggle tip-bottom" data-toggle="tooltip" title="Campus Scenery">
							<i class="fa fa-picture-o"></i>
							<span class="name">工大风光</span>
						</a>
					</li>
					<li class="dropdown">
						<a href="javascript:;" class="team-status-toggle dropdown-toggle tip-bottom" data-toggle="tooltip" title="Point Share">
							<i class="fa  fa-rss"></i>
							<span class="name">精品推荐</span>
						</a>
					</li>
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
							<span class="name">主题</span>
							<i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu skins">
							<li class="dropdown-title">
								<span><i class="fa fa-leaf"></i> 网站主题</span>
							</li>
							<li><a href="javascript:;" data-skin="default">默认</a></li>
							<li><a href="javascript:;" data-skin="night">夜晚</a></li>
							<li><a href="javascript:;" data-skin="earth">地球</a></li>
							<li><a href="javascript:;" data-skin="utopia">乌托邦</a></li>
							<li><a href="javascript:;" data-skin="nature">自然</a></li>
							<li><a href="javascript:;" data-skin="graphite">石墨</a></li>
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
									<form class="form-inline" role="form" style="padding-top:1%;">
									  <div class="form-group">
										<label class="sr-only" for="from">出发</label>
										<input type="text" class="form-control" id="from" placeholder="出发">
									  </div>
									  <i class="fa fa-arrow-right"></i>
									  <div class="form-group">
										<label class="sr-only" for="from">到达</label>
										<input type="text" class="form-control" id="dest" placeholder="到达">
									  </div>
									  <button type="submit" class="btn btn-info"><i class="fa fa-search"></i>导航搜索</button>
									</form>
								</div>
							</div>
						</div>
						<!-- /PAGE HEADER -->
						<div class="row">
							<div id="mapContent" class="plane-body"></div>
						</div>
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
