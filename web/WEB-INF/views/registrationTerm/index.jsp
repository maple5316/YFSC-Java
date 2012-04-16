<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="template" uri="/WEB-INF/views/shared/template.tld" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<template:insert template="/WEB-INF/views/shared/master.jsp">
    <template:put name="MainContent">
        <h2>Registration Terms</h2>
	<h3><a href="<c:url value="/registrationTerm/create.do" />">Create New Registration Term</a></h3>
	<table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>StartDate</th>
                <th>EndDate</th>
                <th>Calendar Items</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>	
            <c:forEach items="${registrations}" var="term">
                <tr>
                    <td>${term.id}</td>
                    <td>${term.termName}</td>
                    <td>${term.startDate}</td>
                    <td>${term.endDate}</td>
                    <td><a href="<c:url value="/calendarItem/index.do" />?id=${term.id}">View</a></td>
                    <td><a href="<c:url value="/registrationTerm/edit.do" />?id=${term.id}">Edit</a></td>
                    <td><a href="<c:url value="/registrationTerm/deleteConfirm.do" />?id=${term.id}">Delete</a></td>
                </tr>	
            </c:forEach>
	</table>
    </template:put>
</template:insert>