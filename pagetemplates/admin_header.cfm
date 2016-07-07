<cfsilent><!---
	Name         : admin_header.cfm
	Author       : Raymond Camden
	Created      : September 6, 2004
	Last Updated : April 10, 2006
	History      : work w/o mapping (rkc 3/10/06)
				 : minor html mod (rkc 4/10/06)
	Purpose		 :
--->
	<cfset templatename = replaceNoCase(listLast(cgi.script_name,"/"),".cfm","")>

</cfsilent><cfoutput><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">

	<title>#attributes.title#</title>
	<link rel="stylesheet" type="text/css" href="../stylesheets/adminStyle.css">
	<script src="javaScripts.cfm"></script>
	 <cfif attributes.loadspry>
	<script src="../includes/SpryData.js"></script>
	<script src="../includes/xpath.js"></script>
	</cfif>
	<script src="../includes/jquery-1.5.2.min.js"></script>
	<script src="../includes/jquery.json-2.2.min.js"></script>
</head>
<body>
	<header>
		<img src="../images/logo.gif" style="float:right;">
	</header>
	<nav id="primarymenu">
		<ul>
			<li <cfif templatename EQ "index">class="current-menu-item"</cfif>><a href="/admin/">Home</a></li>
			<li <cfif listFindNocase("surveys,questions,questiontypes,templates", templatename)>class="current-menu-item"</cfif>>Survey Options
				<ul>
					<li><a href="/admin/surveys.cfm">Surveys</a></li>
					<li><a href="/admin/questions.cfm">Questions</a></li>
					<li><a href="/admin/questiontypes.cfm">Question Types</a></li>
					<li><a href="/admin/templates.cfm">Templates</a></li>
				</ul>
			</li>
			<li>
				Security Options
				<ul>
					<li><a href="/admin/password.cfm">Password</a></li>
					<li><a href="/admin/users.cfm">Users</a></li>
				</ul>
			</li>
			<li>
				Security Options
				<ul>
					<li><a href="/admin/password.cfm">Password</a></li>
					<li><a href="/admin/users.cfm">Users</a></li>
				</ul>
			</li>
			<li <cfif templatename EQ "stats">class="current-menu-item"</cfif>>
				<a href="/admin/stats.cfm">Reporting</a>
			</li>
		</ul>
		&nbsp;
	</nav>
	<main style="clear:both">
</cfoutput>