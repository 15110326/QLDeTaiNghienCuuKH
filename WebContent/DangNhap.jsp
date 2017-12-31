<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.HashMap,model.SinhVien,javax.servlet.http.HttpSession,javax.servlet.RequestDispatcher"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TRƯỜNG ĐẠI HỌC SƯ PHẠM KỸ THUẬT TP.HCM - Trang đăng nhập
	hệ thống</title>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/DangNhap.js"></script>
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


	</div>
	<div class="container">
		<h1 class="text-center">
			<strong>Đăng nhập hệ thống</strong>
		</h1>
		<div class="row" style="border-style: groove">
			<br>

			<form method="post" action="${pageContext.request.contextPath}/login">
				<div class="col-sm-2 col-md-offset-3">

					<input type="checkbox" name="chunhiem" value="C" /><span>Chủ nhiệm</span>
				</div>
				<div class="col-sm-2">
					<input type="checkbox" name="phong" value="P" /> <span>Phòng</span>
				</div>
				<div class="col-sm-5">
					<input type="checkbox" name="hoidong" value="H" /> <span>Hội
						đồng duyệt</span>
				</div>
				<br> <br>
				<div class="col-sm-2 col-md-offset-3">
					<input type="checkbox" name="sinhvien" value="Y" /><span>Sinh
						Viên</span>
				</div>
				<div class="col-sm-7">
					<input type="checkbox" name="admin" value="A"/><span>Admin</span>
				</div>
				<br> <br>



				<div class="col-sm-9 col-md-offset-3">
					<span>Tài khoản:</span>&nbsp;&nbsp; <input type="text"
						id="form_username" class="hoten" name="hoten" /> <span
						class="error_form" id="username_error_message"></span>
				</div>
				<br> <br>
				<div class="col-sm-9 col-md-offset-3">
					<span>Mật khẩu:</span>&nbsp;&nbsp;&nbsp; <input type="password"
						id="form_password" name="pass"> <span
						id="password_error_message"></span>
				</div>

				<br> <br>
				<div class="col-sm-7 col-md-offset-5">
					<input type="submit" name="submit" value="Đăng Nhập" />
				</div>
			</form>
			<br> <br> <br>

		</div>

	</div>
	<div id="footer">

		<img class="img-rounded img-responsive"
			src="assets/img/footerSPKT.PNG" />
	</div>

</body>
</html>