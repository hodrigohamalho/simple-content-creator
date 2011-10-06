<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet" %>

<portlet:defineObjects/>
<link rel="stylesheet" href="<%=request.getContextPath() + "/css/style.css"%>" type="text/css">

<% if (request.getRemoteUser() != null) { %>
	<div class="change-mode">
		<a href="<portlet:renderURL portletMode="edit" />"> Edit </a>
	</div>
<% } %>


<%= request.getAttribute("content") %>