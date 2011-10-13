<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
	<link rel="stylesheet" href="<%=request.getContextPath() + "/css/sam-skin.css"%>" type="text/css">
	<link rel="stylesheet" href="<%=request.getContextPath() + "/css/style.css"%>" type="text/css">
	<script type="text/javascript" src="<%=request.getContextPath() + "/js/index.js"%>"></script>
	<script type="text/javascript" src="<%=request.getContextPath() + "/js/yahoo-editor.js"%>"></script>
	<script type="text/javascript" src="<%=request.getContextPath() + "/js/editor-init.js"%>"></script>
</head>

<portlet:defineObjects/>

<c:choose>
	<c:when test="${pageContext.request.remoteUser != null}">
		<div class="change-mode">
			<a href="<portlet:renderURL portletMode="view" />">View</a>
		</div>
		
		<form action="<portlet:actionURL />" method="post" class="yui-skin-sam">
			<textarea name="content" id="content" cols="50" rows="10">
				<c:out value="${requestScope.content}" />
			</textarea>
					
			<input type="submit" id="submit_content" value="Salvar" />
		</form>
	</c:when>
	<c:otherwise>
		<div class="warning">
			You can't access this page.
		</div>
	</c:otherwise>
</c:choose>

