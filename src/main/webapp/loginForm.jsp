<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.Member" %>
<%@page import="com.Login" %>
<%@page import="com.Common" %>
<%@page import="com.mongodb.MongoClient" %>
<%@page import="org.bson.Document" %>
<%@page import="com.mongodb.client.MongoCollection" %>
<%@page import="org.bson.types.ObjectId" %>
    
<%
	Common common = new Common();

	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
	
	String email, password = ""; 
	email = request.getParameter("email");
	password = request.getParameter("password"); 

	
	MongoClient mongo = new MongoClient("localhost", 27017);
	MongoCollection<Document> collection = mongo.getDatabase("odev").getCollection("members");
	
    Document query = new Document("email", email).append("password", common.generateMD5Hash(password));
    Document result = collection.find(query).first();
    
    if (result != null) {
    	
    	ObjectId id = result.getObjectId("_id");
        String idNew = id.toHexString(); 
         
        Member member = new Member(); 
		member.setId(idNew);
		member.setName((String)result.get("name"));
		member.setEmail((String)result.get("email"));
		member.setPhone((String)result.get("phone"));
		member.setGender((String)result.get("gender"));
		member.setHobby((String)result.get("hobby"));
		member.setCity((String)result.get("city")); 
		member.setType((String)result.get("type"));
		
        session.setAttribute("member", member); 
        
    	response.getWriter().println("<html><body><script type='text/javascript'>alert('Giriş Başarılı'); window.location='index.jsp'</script></body></html>");
    } else {  
		response.getWriter().println("<html><body><script type='text/javascript'>alert('Kullanıcı Adı veya Şifre Hatalı.'); window.location='login.jsp'</script></body></html>");
    }
    
	mongo.close();
	
%>

