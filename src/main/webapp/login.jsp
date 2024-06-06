<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<title>Giriş Yap - Yıllık/Mezunlar Platformu</title>
</head>
<body>
	<div class="container">
		<%@ include file="header.jsp"%>

		<h1 class="pageTitle">Giriş Yap</h1>

		<form action="loginForm.jsp" method="post">
			<div class="col-md-4">
				<div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Kullanıcı
						Adı</label> <input type="email" name="email" class="form-control"
						id="exampleInputEmail1" aria-describedby="emailHelp">
				</div>	
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Şifre</label>
					<input type="password" class="form-control" name="password"
						id="exampleInputPassword1">
				</div>
				<button type="submit" class="btn btn-primary">Giriş</button>
			</div>
		</form>

	</div>

</body>
</html>