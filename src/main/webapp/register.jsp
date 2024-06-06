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
<title>Kayıt Ol - Yıllık/Mezunlar Platformu</title>
</head>
<body>
	<div class="container">
		<%@ include file="header.jsp"%>

		<h1 class="pageTitle">Kayıt Ol</h1>

		<form action="registerForm.jsp" method="post">
		
			<div class="col-md-4">
				<div class="form-group">
					<label for="isim">İsim</label> <input type="text"
						class="form-control" name="name" id="isim" placeholder="İsminizi giriniz"
						required>
				</div>
				<div class="form-group">
					<label for="email">E-posta adresi</label> <input type="email"
						class="form-control"  name="email" id="email"
						placeholder="E-posta adresinizi giriniz" required>
				</div>
				<div class="form-group">
					<label for="email">Şifre</label> <input type="password"
						class="form-control"  name="password" id="password"
						placeholder="Şifre" required>
				</div>
				<div class="form-group">
					<label for="telefon">Telefon</label> <input type="text"
						class="form-control" name="phone" id="telefon"
						placeholder="Telefon numaranızı giriniz" required>
				</div>
				<div class="form-group">
					<label>Cinsiyet</label><br>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender"
							id="erkek" value="erkek" required> <label
							class="form-check-label" for="erkek">Erkek</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender"
							id="kadin" value="kadin" required> <label
							class="form-check-label" for="kadin">Kadın</label>
					</div>
				</div>
				<div class="form-group">
					<label>Hobiler</label><br>
					<div class="form-check">
						<input class="form-check-input" type="checkbox"  name="hobby" id="hobi1"
							value="okuma"> <label class="form-check-label" for="hobi1">Okuma</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox"  name="hobby" id="hobi2"
							value="spor"> <label class="form-check-label" for="hobi2">Spor</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox"  name="hobby" id="hobi3"
							value="seyahat"> <label class="form-check-label"
							for="hobi3">Seyahat</label>
					</div>
				</div>
				<div class="form-group">
					<label for="sehir">Oturduğunuz Şehir</label> <select
						class="form-control" id="sehir" name="city" required>
						<option value="">Şehir seçiniz</option>
						<option value="Adana">Adana</option>
						<option value="Adıyaman">Adıyaman</option>
						<option value="Afyonkarahisar">Afyonkarahisar</option>
						<option value="Ağrı">Ağrı</option>
						<option value="Aksaray">Aksaray</option>
						<option value="Amasya">Amasya</option>
						<option value="Ankara">Ankara</option>
						<option value="Antalya">Antalya</option>
						<option value="Ardahan">Ardahan</option>
						<option value="Artvin">Artvin</option>
						<option value="Aydın">Aydın</option>
						<option value="Balıkesir">Balıkesir</option>
						<option value="Bartın">Bartın</option>
						<option value="Batman">Batman</option>
						<option value="Bayburt">Bayburt</option>
						<option value="Bilecik">Bilecik</option>
						<option value="Bingöl">Bingöl</option>
						<option value="Bitlis">Bitlis</option>
						<option value="Bolu">Bolu</option>
						<option value="Burdur">Burdur</option>
						<option value="Bursa">Bursa</option>
						<option value="Çanakkale">Çanakkale</option>
						<option value="Çankırı">Çankırı</option>
						<option value="Çorum">Çorum</option>
						<option value="Denizli">Denizli</option>
						<option value="Diyarbakır">Diyarbakır</option>
						<option value="Düzce">Düzce</option>
						<option value="Edirne">Edirne</option>
						<option value="Elazığ">Elazığ</option>
						<option value="Erzincan">Erzincan</option>
						<option value="Erzurum">Erzurum</option>
						<option value="Eskişehir">Eskişehir</option>
						<option value="Gaziantep">Gaziantep</option>
						<option value="Giresun">Giresun</option>
						<option value="Gümüşhane">Gümüşhane</option>
						<option value="Hakkari">Hakkari</option>
						<option value="Hatay">Hatay</option>
						<option value="Iğdır">Iğdır</option>
						<option value="Isparta">Isparta</option>
						<option value="İstanbul">İstanbul</option>
						<option value="İzmir">İzmir</option>
						<option value="Kahramanmaraş">Kahramanmaraş</option>
						<option value="Karabük">Karabük</option>
						<option value="Karaman">Karaman</option>
						<option value="Kars">Kars</option>
						<option value="Kastamonu">Kastamonu</option>
						<option value="Kayseri">Kayseri</option>
						<option value="Kırıkkale">Kırıkkale</option>
						<option value="Kırklareli">Kırklareli</option>
						<option value="Kırşehir">Kırşehir</option>
						<option value="Kilis">Kilis</option>
						<option value="Kocaeli">Kocaeli</option>
						<option value="Konya">Konya</option>
						<option value="Kütahya">Kütahya</option>
						<option value="Malatya">Malatya</option>
						<option value="Manisa">Manisa</option>
						<option value="Mardin">Mardin</option>
						<option value="Mersin">Mersin</option>
						<option value="Muğla">Muğla</option>
						<option value="Muş">Muş</option>
						<option value="Nevşehir">Nevşehir</option>
						<option value="Niğde">Niğde</option>
						<option value="Ordu">Ordu</option>
						<option value="Osmaniye">Osmaniye</option>
						<option value="Rize">Rize</option>
						<option value="Sakarya">Sakarya</option>
						<option value="Samsun">Samsun</option>
						<option value="Şanlıurfa">Şanlıurfa</option>
						<option value="Siirt">Siirt</option>
						<option value="Sinop">Sinop</option>
						<option value="Şırnak">Şırnak</option>
						<option value="Sivas">Sivas</option>
						<option value="Tekirdağ">Tekirdağ</option>
						<option value="Tokat">Tokat</option>
						<option value="Trabzon">Trabzon</option>
						<option value="Tunceli">Tunceli</option>
						<option value="Uşak">Uşak</option>
						<option value="Van">Van</option>
						<option value="Yalova">Yalova</option>
						<option value="Yozgat">Yozgat</option>
						<option value="Zonguldak">Zonguldak</option>
					</select>
				</div>
				<br>
				<button type="submit" class="btn btn-primary">Kaydet</button>
			</div>
		</form>
<br>
	</div>

</body>
</html>