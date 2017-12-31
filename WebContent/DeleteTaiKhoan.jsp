
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
		<p class="form-control-static text-right"> <span>TenTaiKhoan </span>
			<button class="btn btn-default btn-sm" type="button" id="DangXuat">Đăng
				xuất</button>
		</p>

	 <h3>Delete Product</h3>
    
    <p style="color: red;">${errorString}</p>
    <a href="taikhoanlist">TaiKhoanList List</a>
    </div>
	<div class="container">
		<img class="img-rounded img-responsive"
			src="assets/img/footerSPKT.PNG">
	</div>
</body>
</html>