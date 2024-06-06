<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.Member"%>


<div class="logo">
	<a class="navbar-brand" href="index.jsp">Yıllık/Mezunlar Platformu</a>
</div>


<nav class="navbar navbar-expand-lg navbar-light"
	style="background-color: #e3f2fd;">
	<div class="container-fluid">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" aria-current="page"
					href="index.jsp">Anasayfa</a></li>

				<li class="nav-item"><a class="nav-link" href="forum.jsp">Forum</a>
				</li>

				<li class="nav-item"><a class="nav-link" href="persons.jsp">Kişiler</a>
				</li>

				<li class="nav-item"><a class="nav-link" href="photos.jsp">Fotoğraflar</a>
				</li>

				<li class="nav-item"><a class="nav-link" href="videos.jsp">Videolar</a>
				</li>

				<li class="nav-item"><a class="nav-link" href="whois.jsp">Kim,
						Nerede, Ne Yapıyor?</a></li>

				<li class="nav-item"><a class="nav-link" href="map.jsp">Harita</a>
				</li>



				<%
				Member member = (Member) session.getAttribute("member");
				if (member != null) {
				%>
				<li class="nav-item">
					<a class="nav-link" style="color:blue">Hoş Geldiniz <%=member.getName()%> (<%=member.getType()%>)</a>
				</li>
				<li class="nav-item">
					<a class="nav-link"  style="color:red" href="logout.jsp">Çıkış Yap</a>
				</li>
				<%
				} else {
				%>
				<li class="nav-item"><a class="nav-link" href="register.jsp">Kayıt
						Ol</a></li>

				<li class="nav-item"><a class="nav-link" href="login.jsp">Oturum
						Aç</a></li>
				<%
				}
				%>

			</ul>
		</div>
	</div>
</nav>
