<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.Login" %>
    
<% 
	session.setAttribute("member", null);  
    response.getWriter().println("<html><body><script type='text/javascript'>alert('Çıkış Yapıldı'); window.location='index.jsp'</script></body></html>");
	
%>

