<!DOCTYPE html>
<html lang="en">
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.HashMap,model.SinhVien,javax.servlet.http.HttpSession,javax.servlet.RequestDispatcher"%>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script src="JS/jquery-3.2.1.min.js"></script>
<script src="JS/TrangThongTinCaNhan.js"></script>

<title>TRƯỜNG ĐẠI HỌC SƯ PHẠM KỸ THUẬT TP.HCM - Trang đăng kí
	đề tài</title>
<style>
#footer {
	background: #F1F1F1;
	margin-top: 600px;
	padding-top: 10px;
}
</style>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<style>
#footer {
	background: #F1F1F1;
	margin-top: 500px;
	padding-top: 20px;
}
</style>


</head>
<body>
	<div id="header">
		<img border="0" src="assets/img/Capture.PNG" />
		<nav class="navbar navbar-inverse navbar-static-top" role="navigation"
			style="background: #87CEEB; color: white">


			<ul class="nav navbar-nav">
				<li><a href="#TrangChu" type="button" id="TrangChu">Trang
						Chủ </a></li>
				<li><a href="#ThongtinCaNhan" type="button" id="ThongtinCaNhan">
						Thông tin Cá Nhân </a></li>

				<li><a href="#QuanLyDeTai" type="button" id="QuanLyDeTai">Quản
						Lý Đề Tài</a></li>
				<li><a href="#GiaHan" type="button" id="GiaHan">Gia Hạn Và
						Hủy</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li id="taikhoan"><a>Tài Khoản:${user.userName}</a></li>
				<li><a href="#DangNhap" type="button" id="DangNhap"><span
						class="glyphicon glyphicon-log-in"></span> DangXuat</a></li>
			</ul>
		</nav>
	</div>
	<br>

	<br>
	<div class="example">
		<div class="container">
		<form method="post" action="${pageContext.request.contextPath}/thongtin">
			<div class="row">
			<h2>Thông Tin Cá Nhân</h2>
			
				<div class="form-group ">
					<label class="control-label col-xs-2">Nhap MaSV</label> <input type="text" name="masv" ></input>
					
					<label class="control-label col-xs-2">HoTen</label>
					<div class="col-xs-10">
						<span class="form-control">${sv.hoTen}</span>
					</div>
				</div>
				
				</div>
				<div class="form-group ">
					<label class="control-label col-xs-2">Ngay Sinh</label>
					<div class="col-xs-10">
						<span class="form-control">${sv.ngSinh}</span>
					</div>
				</div>
				<div class="form-group ">
					<label class="control-label col-xs-2">Gioi Tính</label>
					<div class="col-xs-10">
						<span class="form-control">${sv.gioiTinh }</span>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-xs-2">SDT</label>
					<div class="col-xs-10">
						<span class="form-control">${sv.SDT}</span>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-xs-2">DiaChi</label>
					<div class="col-xs-10">
						<span class="form-control">${sv.DChi}</span>
					</div>
				</div>
				
		<input type="submit" name="submit" value="Xác Nhận" />

		</form>
</div>


				
	
	</div>
		

	

	<div id="footer">
		<img class="img-rounded img-responsive"
			src="assets/img/footerSPKT.PNG" />

	</div>


</body>
</html>