<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
	<link rel="stylesheet" href="<%=request.getContextPath() + "/css/sam-skin.css"%>" type="text/css">
	<link rel="stylesheet" href="<%=request.getContextPath() + "/css/style.css"%>" type="text/css">
	<script type="text/javascript" src="<%=request.getContextPath() + "/js/index.js"%>"></script>
	<script type="text/javascript" src="<%=request.getContextPath() + "/js/yahoo-dom-event.js"%>"></script>
	<script type="text/javascript" src="<%=request.getContextPath() + "/js/animation-min.js"%>"></script>
	<script type="text/javascript" src="<%=request.getContextPath() + "/js/element-min.js"%>"></script>
	<script type="text/javascript" src="<%=request.getContextPath() + "/js/container-min.js"%>"></script>
	<script type="text/javascript" src="<%=request.getContextPath() + "/js/element-min.js"%>"></script>
	<script type="text/javascript" src="<%=request.getContextPath() + "/js/menu-min.js"%>"></script>
	<script type="text/javascript" src="<%=request.getContextPath() + "/js/button-min.js"%>"></script>
	<script type="text/javascript" src="<%=request.getContextPath() + "/js/editor-min.js"%>"></script>
	<script type="text/javascript" src="<%=request.getContextPath() + "/js/editor-init.js"%>"></script>
</head>

<portlet:defineObjects/>

<% if (request.getRemoteUser() != null) { %>
	<div class="change-mode">
		<a href="<portlet:renderURL portletMode="view" />">View</a>
	</div>
	
	<form action="<portlet:actionURL />" method="post" class="yui-skin-sam">
		<textarea name="content" id="content" cols="50" rows="10">
			<%= request.getAttribute("content") %>
		</textarea>
				
		<input type="submit" id="submit_content" value="Salvar" />
	</form>
	
<% } else{ %>

	<div class="warning">
		You can't access this page.
	</div>
	
<% } %>