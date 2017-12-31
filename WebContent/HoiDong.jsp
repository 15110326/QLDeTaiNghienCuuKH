<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="JS/HoiDong.js"></script>
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
			<span>Tên tài khoản:${sv.hoTen} </span>
			<button class="btn btn-default btn-sm" type="button" id="DangXuat">Đăng
				xuất</button>
		</p>


	</div>
	<div>
		<ul class="nav nav-tabs">
			<li class="active"><a href="#tab-1" role="tab" data-toggle="tab"><strong><span
						style="text-decoration: underline;">Hội Đồng Kiểm Duyệt</span></strong></a></li>
			<li><a href="#tab-2" role="tab" data-toggle="tab"><strong><span>Hội
							Đồng Nghiệm Thu</span></strong></a></li>
		</ul>
	</div>
	<div class="table-responsive col-xs-12">
		<div class="tab-content">
			<div class="tab-pane active" role="tabpanel" id="tab-1">
				<table class="table table-bordered ">
					<thead>
						<tr>
							<th class="info"><strong>STT</strong></th>
							<th class="info"><strong>Tên Đề Tài</strong></th>
							<th class="info"><strong>Tên SV</strong></th>
							<th class="info"><strong>Thời Gian </strong></th>
							<th class="info ">Email</th>
							<th class="info ">Chi Tiết</th>
							<th class="info ">Trạng Thái</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Tìm hiểu Công Nghệ Servlet</td>
							<td>Nguyễn Văn A</td>
							<td>10/7/2017</td>
							<td><a href="#">Email</a></td>
							<td><a name="chitiet" href="#"><span
									style="text-decoration: underline;" id="xem">Xem</span></a></td>
							<td><a id="TrangThai" href="#"><span
									style="text-decoration: underline;">Trạng Thái</span></a></td>

						</tr>
						<tr>
							<td>2</td>
							<td>Quản lý dự án kiểm soát tiến trình phần mềm</td>
							<td>Nguyễn Văn B</td>
							<td>10/7/2017</td>
							<td><a href="#">Email</a></td>
							<td><a name="chitiet" href="#"><span
									style="text-decoration: underline;" id="xem1">Xem</span></a></td>
							<td><a id="TrangThai1" href="#"><span
									style="text-decoration: underline;">Trạng Thái</span></a></td>

						</tr>
						<tr></tr>
						<tr></tr>
					</tbody>

				</table>
			</div>
		</div>
	</div>

	<div class="table-responsive col-xs-12">
		<div class="tab-content">
			<div class="tab-pane active" role="tabpanel" id="tab-2">

				<table class="table table-bordered ">
					<thead>
						<tr>
							<th class="info"><strong>STT</strong></th>
							<th class="info"><strong>Tên Đề Tài</strong></th>
							<th class="info"><strong>Tên SV</strong></th>
							<th class="info"><strong>Thời Gian </strong></th>
							<th class="info ">Kết Quả</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Tìm hiểu Công Nghệ Servlet</td>
							<td>Nguyễn Văn A</td>
							<td>10/7/2017</td>
							<td><a href="#">Đã Nghiệm Thu</a></td>


						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="col-sm-7 col-md-offset-5">
			<button class="btn btn-primary" type="button">Gửi Kết Quả</button>
		</div>
	</div>


</body>
</html>