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
				<h2>Đề Tài Nghiên Cứu</h2>
				<form method="post" action="${pageContext.request.contextPath}/detai">
					<div class="form-group ">
						<label class="control-label col-xs-2 ">Mã Số Đề Tài</label>
						<div class="col-xs-10">
							<input  class="form-control" name="mdt"/>${detai.maDeTai} </input>
						</div>
					</div>
					<div class="form-group ">
						<label class="control-label col-xs-2">Tên Đề Tài</label>
						<div class="col-xs-10">
							<input  class="form-control" placeholder="Ten De Tai" name="tdt"/>${detai.tenDeTai} </input>
						</div>
					</div>
					<div class="form-group ">
						<label class="control-label col-xs-2">Ngày Nộp</label>
						<div class="col-xs-10">
							<input  class="form-control"
								placeholder="Ngày Nộp" name="nn">${detai.ngayNop} </input>
						</div>
					</div>
					<div class="form-group ">
						<label class="control-label col-xs-2">Lĩnh Vực</label>
						<div class="col-xs-10">
							<input  class="form-control"
								placeholder="Lĩnh Vực" name="lv">${detai.linhVuc} </input>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-xs-2">Mã Số Giảng Viên</label>
						<div class="col-xs-10">
							<input  class="form-control"
								placeholder="Mã Số GV" name="mgv">${detai.maGV_HD} </input>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-xs-2">Duyệt</label>
						<div class="col-xs-10">
							<input  class="form-control"
								placeholder="Duyet" name="duyet">${detai.duyet} </input>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-xs-2">SinhVienTH</label>
						<div class="col-xs-10">
							<input  class="form-control"
								placeholder="SinhVienThucHien" name="svth">${detai.SVThucHien} </input>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-xs-2">Thảo Luận</label>
						<div class="col-xs-12 ">
							<input type="password" class="form-control"
								placeholder="Thảo Luận" name="tl">${detai.thaoLuan} </input>
						</div>
					</div>
					<div>
				 
					</div>

					<div class="form-group">
						<div class="col-xs-offset-2 col-xs-10">
							<input type="submit" value="Gửi">
							
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
