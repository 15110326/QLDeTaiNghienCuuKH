<!DOCTYPE html>
<html lang="en">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script src="JS/jquery-3.2.1.min.js"></script>
<script src="JS/PhongQuanLy.js"></script>

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
	<div class="container">
		<img class="img-responsive" src="assets/img/Capture.PNG">
		<ul class="nav nav-tabs">
			<li class="active"><a href="#TrangChu" id="TrangChu"><strong>TRANG
						CHỦ</strong></a></li>
			<li><a href="#GioiThieu"><strong>GIỚI THIỆU</strong></a></li>
			<li><a href="#HuongDan"><strong>HƯỚNG DẪN</strong></a></li>
			<li><a href="#VanBan-BieuMau"><strong>VĂN BẢN-BIỂU
						MẪU</strong></a></li>
			<li><a href="#LienHe"><strong>LIÊN HỆ</strong></a></li>
		</ul>
		<p class="form-control-static text-right">
			<span>Tên tài khoản: ${sv.hoTen} </span>
			<button class="btn btn-default btn-sm" type="button" id="DangXuat">Đăng
				xuất</button>
		</p>


	</div>
	<div class="row">
		<div class="col-md-12 col-md-offset-0">
			<h1 class="text-center">
				<strong>Phòng Quản Lý</strong>
			</h1>
		</div>
	</div>
	<section>
		<div class="table-responsive">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th class="info"><strong>STT</strong></th>
						<th class="info"><strong>Tên đề tài</strong></th>
						<th class="info"><strong>Tên sinh viên</strong></th>
						<th class="info"><strong>Ngày hết hạn </strong></th>
						<th class="info"><strong>Email </strong></th>
						<th class="info">Chi tiết</th>
						<th class="info">Trạng thái</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Quản lý thư viện</td>
						<td>Nguyễn Văn Anh</td>
						<td>23/7/2018</td>
						<td>anh119@gmail.com</td>
						<td style="vertical-align: middle;"><a href="#"><span
								style="text-decoration: underline;" id="xem">Xem</span></a></td>
						<td><a href="#" id="TrangThai"><span
								style="text-decoration: underline;">Duyệt</span></a></td>

					</tr>
					<tr>
						<td>2</td>
						<td>Quản lý cửa hàng laptop</td>
						<td>Huỳnh Văn Thuận</td>
						<td>10/06/2018</td>
						<td>hvthuan250@gmail.com</td>
						<td><a href="#"><span style="text-decoration: underline;"
								id="xem1">Xem</span></a></td>
						<td><a href="#" id="TrangThai1"><span
								style="text-decoration: underline;">Duyệt</span></a></td>
					</tr>
					<tr>
						<td>2</td>
						<td>Quản lý nhà trọ</td>
						<td>Hà Cẩm Tiên</td>
						<td>10/06/2018</td>
						<td>tien710@gmail.com</td>
						<td><a href="#"><span style="text-decoration: underline;"
								id="xem2">Xem</span></a></td>
						<td><a href="#" id="TrangThai2"><span
								style="text-decoration: underline;">Duyệt</span></a></td>
					</tr>
					<tr></tr>
					<tr></tr>
				</tbody>
			</table>
		</div>
	</section>

	<div class="container">
		<img class="img-rounded img-responsive"
			src="assets/img/footerSPKT.PNG">
	</div>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/DangNhap.js"></script>
</body>

</html>