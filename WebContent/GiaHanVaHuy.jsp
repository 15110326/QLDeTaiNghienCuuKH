<!DOCTYPE html>
<html lang="en">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script src="JS/jquery-3.2.1.min.js"></script>
<script src="JS/QuanLyDeTai.js"></script>

<title>TRƯỜNG ĐẠI HỌC SƯ PHẠM KỸ THUẬT TP.HCM - Trang đăng kí
	đề tài</title>
<style>
#footer {
	background: #F1F1F1;
	margin-top: 600px;
	padding-top: 10px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TRƯỜNG ĐẠI HỌC SƯ PHẠM KỸ THUẬT TP.HCM - Trang đăng nhập
	hệ thống</title>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/DangNhap.js"></script>
</head>
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

				<li><a href="#QuanLyDeTai" type="button" id="QuanLyDeTai">Quản
						Lý Đề Tài</a></li>
				<li><a href="#GiaHan" type="button" id="GiaHan">Gia Hạn Và
						Hủy</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><label class="control-label col-xs-2" id="taikhoan">Tài
						Khoản</label></li>
				<li><a href="#DangNhap" type="button" id="DangNhap"><span
						class="glyphicon glyphicon-log-in"></span> Đăng Xuất</a></li>
			</ul>
		</nav>
	</div>

	<div class="example">
		<div class="container">
			<div class="row" style="text-align: center">
				<h2>Đơn Xin Đề Tài</h2>
				<form method="post" action="${pageContext.request.contextPath}/detaisinhvien" >
				<div class="row">
					<br>
					<div class="col-xs-2 col-xs-offset-3">
						<input type="radio" name="giahan"  value="X"/> <span>Gia Hạn</span>
					</div>
					<div class="col-xs-2">
						<input type="radio" name="huy" value="Y"/> <span>Huỷ</span>
					</div>
				</div>
				<br> <br>
			
					<div class="form-group">
						<label class="control-label col-xs-2">Mã Số SinhVien</label>
						<div class="col-xs-8">
							<input  class="form-control" placeholder="Mã Số Sinh Viên" name="masv">
						</div>
					</div>
				
					<div class="form-group ">
						<label class="control-label col-xs-2 ">MaDeTai</label>
						<div class="col-xs-8">
							<input  class="form-control" placeholder="MaDeTai" name="madt">
						</div>
					</div>
				<div class="form-group">
						<label class="control-label col-xs-2">Lý Do</label>
						<div class="col-xs-8 ">
							<input  class="form-control" placeholder="LyDo" name="lydo">
						</div>
					</div>
					<div class="form-group ">
						<label class="control-label col-xs-2">Thời Gian Gia Hạn</label>
						<div class="col-xs-8">
							<input type="password" class="form-control"
								placeholder="Thời Gian Gia Hạn" name="thoigiangiahan">
						</div>
					</div>
				

					<div class="form-group">
					
						<div class="col-xs-offset-2">
							<input type="submit" value="Nộp" />

						</div>




					</div>
					<div>
						<p style="color: red;">${Error}</p>
					</div>
				</form>
			
			</div>
		</div>

	</div>


	<div id="footer">

		<img class="img-rounded img-responsive"
			src="assets/img/footerSPKT.PNG" />
	</div>
</body>
</html>
