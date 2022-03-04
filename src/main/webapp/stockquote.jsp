<%-- 
    Document   : stock-ticker
    Created on : Mar 4, 2022, 3:12:06 PM
    Author     : benray
--%>
<%--<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<form method="post" action="stockquote.jsp">
    <br/><input type="text" name="price"/>
    <br/><input type="text" name="name"/>
    <br/><input type="submit"/>
</form>

<% 
 String name = request.getParameter("name"); 
 Integer price = Integer.parseInt("22"); 

%>

<c:set var="price" value="11" scope="page"/>
<c:set var="name" value="fhgjf" scope="page"/>
<jsp:useBean id="Stock" class="com.ben.jspproject.Stock" scope="request">
    <jsp:setProperty name="Stock" property="name" value="<%= name %>"/>
    <jsp:setProperty name="Stock" property="price" value="<%= price %>" />
</jsp:useBean>

<c:if test="${Stock.valid()}">
    
    <%= "Message" +Stock.getPrice() %>
    <%= "Message" +Stock.getName() %>
</c:if>
