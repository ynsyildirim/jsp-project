<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.Member" %>
<%@page import="com.Common" %>
<%@page import="com.mongodb.MongoClient" %>
<%@page import="org.bson.Document" %>
<%@page import="com.mongodb.client.MongoCollection" %>
    
<%
	Common common = new Common();

	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
	
	String name, email, password, phone, gender, hobby, city = "";
	name = request.getParameter("name");
	email = request.getParameter("email");
	password = request.getParameter("password");
	phone = request.getParameter("phone");
	gender = request.getParameter("gender");
	hobby = request.getParameter("hobby");
	city = request.getParameter("city");
	
	
	MongoClient mongo = new MongoClient("localhost", 27017);
	MongoCollection<Document> collection = mongo.getDatabase("odev").getCollection("members");
	
    Document query = new Document("email", email);
    long count = collection.count(query);
    
    if (count > 0) {
    	response.getWriter().println("<html><body><script type='text/javascript'>alert('Email Sistemde Kayıtlı.'); window.location='register.jsp'</script></body></html>");
    } else {
    
		Member member = new Member();
		member.setName(name);
		member.setEmail(email);
		member.setPhone(phone);
		member.setGender(gender);
		member.setHobby(hobby);
		member.setCity(city);
		member.setPassword(common.generateMD5Hash(password));
		member.setType("normal");
		 
		Document doc = new Document("name", member.getName())
		.append("type", member.getType())
		.append("email", member.getEmail())
		.append("phone", member.getPhone())
		.append("gender", member.getGender())
		.append("hobby", member.getHobby())
		.append("city", member.getCity())
		.append("password", member.getPassword());
		
		
		collection.insertOne(doc);
		
		response.getWriter().println("<html><body><script type='text/javascript'>alert('Üyeliğiniz Başarılı Bir Şekilde Gerçekleşmiştir.'); window.location='login.jsp'</script></body></html>");
		
    }
    
	mongo.close();
	
%>

