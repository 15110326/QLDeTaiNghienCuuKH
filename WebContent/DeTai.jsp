<!DOCTYPE html>
<html lang="en">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script src="JS/jquery-3.2.1.min.js"></script>
<script src="JS/TrangDeTai.js"></script>

<title>TRƯỜNG ĐẠI HỌC SƯ PHẠM KỸ THUẬT TP.HCM - Trang đăng kí
	đề tài</title>
<style>
#footer {
	background: #F1F1F1;
	margin-top: 600px;
	padding-top: 10px;
}
</style>
<meta charset="UTF-8">

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
				<li><a href="#TrangChu" type="button" id="TrangChu"> Trang
						Chủ </a></li>
				<li><a href="#ThongtinCaNhan" type="button" id="ThongtinCaNhan">Thông
						tin Cá Nhân </a></li>
				<li><a href="#DeTai" type="button" id="DeTai"> Đề Tài</a></li>
				<li><a href="#QuanLyDeTai" type="button" id="QuanLyDeTai">Quản
						Lý Đề Tài</a></li>
				<li><a href="#GiaHan" type="button" id="GiaHan">Gia Hạn Và
						Hủy</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#DangNhap" type="button" id="DangNhap"><span
						class="glyphicon glyphicon-log-in"></span> SinhVien:</a></li>
			</ul>
		</nav>
	</div>

	<div class="example">
		<div class="container">
			<div class="row" style="text-align: center">
				<h2>Đề Tài Nghiên Cứu</h2>
				<form class="form-horizontal">
					<div class="form-group ">
						<label class="control-label col-xs-2 ">Số Thứ Tự</label>
						<div class="col-xs-10">
							<input type="email" class="form-control" placeholder="STT">
						</div>
					</div>
					<div class="form-group ">
						<label class="control-label col-xs-2">Mã Số Sinh Viên</label>
						<div class="col-xs-10">
							<input type="password" class="form-control"
								placeholder="Ma so Sinh Vien">
						</div>
					</div>
					<div class="form-group ">
						<label class="control-label col-xs-2">Họ Tên</label>
						<div class="col-xs-10">
							<input type="password" class="form-control" placeholder="HoTen">
						</div>
					</div>
					<div class="form-group ">
						<label class="control-label col-xs-2">Giới Tính</label>
						<div class="col-xs-10">
							<input type="password" class="form-control"
								placeholder="GioiTinh">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-xs-2">Tên Đề Tài</label>
						<div class="col-xs-10">
							<input type="password" class="form-control"
								placeholder="TenDeTai">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-xs-2">Ghi Chú</label>
						<div class="col-xs-10">
							<input type="password" class="form-control" placeholder="Ghi Chu">
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-offset-2 col-xs-10">
							<button type="submit" class="btn btn-primary col-xs-ofset-2">Add</button>
							<button type="submit" class="btn btn-primary col-xs-offset-3">ChiTietDeTai</button>
						</div>




					</div>
				</form>
			</div>
		</div>

	</div>


	<div id="footer">

		<img src="assets/img/Footer.PNG" />
	</div>
</body>
</html>
