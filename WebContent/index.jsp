<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="org.jasig.cas.client.authentication.AttributePrincipalImpl"%><html>

<head>
<title>Insert title here</title>
</head>
<body>
    <%= request.getRemoteUser()== null ? "null" : request.getRemoteUser() %> made it.
    
    <%
    	AttributePrincipalImpl principal = (AttributePrincipalImpl)  request.getUserPrincipal(); 
    %>
    <p><%= principal.getAttributes().toString() %></p>
    
</body>
</html>