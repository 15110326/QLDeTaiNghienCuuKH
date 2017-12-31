
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="JS/Admin.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		<p class="form-control-static text-right"> <span>MaTaiKhoan:${user.maTK} </span>
			<button class="btn btn-default btn-sm" type="button" id="DangXuat">Đăng
				xuất</button>
		</p>

		<h3 class="text-uppercase text-center">
			<strong> Quản lý người dùng</strong>
		</h3>
	</div>
	<div class="container">
	<form method="post" action="${pageContext.request.contextPath}/taikhoan">
		<div class="row" style="border-style: groove">
			<div class="col-sm-12 col-md-offset-2">
				 <span >Quyền</span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select class="form-inline" name="quyen">
					<option>Chủ nhiệm</option>
					<option>Quản lý</option>
					<option>Hội đồng duyệt</option>
					<option>Nghiệm thu</option>
					<option>Admin</option>
				</select>
			</div>
			
			<div class="col-sm-12 col-md-offset-2">
				<br> <span>Tài khoản</span> &nbsp;&nbsp; <input type="text" name="taikhoan">
			</div>
			<div class="col-sm-12 col-md-offset-2">
				<br> <span>Mật khẩu</span> &nbsp;&nbsp;&nbsp; <input
					type="text" name="matkhau">
			</div>
			<div class="col-sm-5 col-md-offset-3">
				<br>
				<input  type="submit" value="Thêm"/>
				<br> <br>
			</div>
		</div>
		<br>
		</form>
		<div class="table-responsive">
			<table class="table table-bordered">
				<thead>
					<tr>
				
						<th class="info"><strong>Mã số</strong></th>
						<th class="info"><strong>Tài khoản</strong></th>
						<th class="info"><strong>Quyền </strong></th>
					
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${taikhoanlist}" var="lists">
					<tr>

						<td>${lists.maTK}</td>
						<td>${lists.matKhau}</td>
						<td>${lists.quyen}</td>
						<td><a href="edittaikhoan?matk=${lists.maTK}">Edit</a>
						<td><a href="deletetaikhoan?matk=${lists.maTK}">Delete</a>
					</tr>
					</c:forEach>
					
				</tbody>
				<caption class="lead text-primary">
					<strong>Danh sách tài khoản đăng nhập</strong>
				</caption>
			</table>
		</div>
	</div>
	<div class="container">
		<img class="img-rounded img-responsive"
			src="assets/img/footerSPKT.PNG">
	</div>
</body>
</html>