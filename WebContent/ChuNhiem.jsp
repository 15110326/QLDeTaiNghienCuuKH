<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="JS/ChuNhiem.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<div class="container">
		<img class="img-responsive" src="assets/img/Capture.PNG">
		<ul class="nav nav-tabs">
			<li class="active"><a href="#TrangChu"><strong>TRANG
						CHỦ</strong></a></li>
			<li><a href="#GioiThieu"><strong>GIỚI THIỆU</strong></a></li>
			<li><a href="#HuongDan"><strong>HƯỚNG DẪN</strong></a></li>
			<li><a href="#VanBan-BieuMau"><strong>VĂN BẢN-BIỂU
						MẪU</strong></a></li>
			<li><a href="#LienHe"><strong>LIÊN HỆ</strong></a></li>
		</ul>
		<p class="form-control-static text-right">
			<span>Tên tài khoản: ${user.maTK}</span>
			<button class="btn btn-default btn-sm" type="button" id="DangXuat">Đăng
				xuất</button>
		</p>

		<div>
			<ul class="nav nav-tabs">
				<li class="active"><a href="#tab-1" role="tab"
					data-toggle="tab"><strong><span
							style="text-decoration: underline;">ĐỀ TÀI MỚI</span></strong></a></li>
				<li><a href="#tab-2" role="tab" data-toggle="tab"><strong><span
							style="text-decoration: underline;">ĐỀ TÀI ĐANG TIẾN HÀNH</span></strong></a></li>
				<li><a href="#tab-4" role="tab" data-toggle="tab"><strong><span
							style="text-decoration: underline;">ĐỀ TÀI ĐÃ NGHIỆM THU</span></strong></a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" role="tabpanel" id="tab-1">
					<div class="table-responsive">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th class="info"><strong>STT</strong></th>
									<th class="info"><strong>Tên đề tài</strong></th>
									<th class="info"><strong>NgàyNộp</strong></th>
									<th class="info"><strong> Lĩnh Vực</strong></th>
									<th class="info"><strong>SVThucHien </strong></th>
									<th class="info">Duyệt</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${detaiList}" var="detai">
								<tr>
									<td>${detai.maDeTai}</td>
									<td>${detai.tenDeTai}</td>
									<td>${detai.ngayNop }</td>
									<td>${detai.linhVuc }</td>
									<td>${detai.SVThucHien }</td>
									<td><a href="#"><span
											style="text-decoration: underline;" id="TrangThai">Duyệt</span></a></td>

								</tr>
								</c:forEach>
								
							</tbody>
						</table>
					</div>
				</div>
				<div class="tab-pane" role="tabpanel" id="tab-2">
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
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${detaiList1}" var="detai1">
								<tr>
									<td>${detai1.maDeTai}</td>
									<td>${detai1.tenDeTai}</td>
									<td>${detai1.ngayNop }</td>
									<td>${detai1.linhVuc }</td>
									<td>${detai1.SVThucHien }</td>
									<td><a href="#"><span
											style="text-decoration: underline;" id="TrangThai">Xem</span></a></td>

								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="tab-pane" role="tabpanel" id="tab-4">
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
									<th class="info">Kết quả</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>Quản lý thư viện</td>
									<td>Nguyễn Văn Anh</td>
									<td>23/7/2018</td>
									<td>anh119@gmail.com</td>
									<td><a href="#" id="xem"><span
											style="text-decoration: underline;">Xem</span></a></td>
									<td>Đạt</td>

								</tr>
								<tr>
									<td>2</td>
									<td>Quản lý cửa hàng laptop</td>
									<td>Huỳnh Văn Thuận</td>
									<td>10/06/2018</td>
									<td>hvthuan250@gmail.com</td>
									<td><a href="#" id="xem1"><span
											style="text-decoration: underline;">Xem</span></a></td>
									<td>Không đạt</td>
								</tr>
								<tr></tr>
								<tr></tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="tab-pane" role="tabpanel" id="tab-3"></div>
			</div>
		</div>
	</div>
	<div class="container">
		<img class="img-rounded img-responsive"
			src="assets/img/footerSPKT.PNG">
	</div>
</body>
</html>