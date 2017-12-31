<!DOCTYPE html>
<html lang="en">
<%@page contentType="text/html" pageEncoding="UTF-8"
	import="java.util.HashMap ,model.SinhVien,javax.servlet.http.HttpSession"%>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script src="JS/jquery-3.2.1.min.js"></script>
<script src="JS/TrangSinhVien.js"></script>



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
	<div id="header">
		<img border="0" src="assets/img/Capture.PNG" />
		<nav class="navbar navbar-inverse navbar-static-top" role="navigation"
			style="background: #87CEEB; color: white">

			<ul class="nav navbar-nav">
				<li><a href="#TrangChu" type="button" id="TrangChu">Trang
						Chủ</a></li>
				<li><a href="#ThongtinCaNhan" type="button" id="ThongtinCaNhan">Thông
						tin Cá Nhân </a></li>

				<li><a href="#QuanLyDeTai" type="button" id="QuanLyDeTai">Quản
						Lý Đề Tài</a></li>
				<li><a href="#GiaHan" type="button" id="GiaHan">Gia Hạn Và
						Hủy</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li id="taikhoan"><a>Tài Khoản:${user.maTK} </a></li>
				<li><a href="#DangNhap" type="button" id="DangNhap"><span
						class="glyphicon glyphicon-log-in"></span> DangXuat</a></li>

			</ul>
		</nav>
	</div>

	<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="info"><strong>Mã Đề Tài </strong></th>
					<th class="info"><strong>Tên Đề Tài</strong></th>
					<th class="info"><strong>Sinh Vien Thực Hiện</strong></th>
					<th class="info ">Xem Kết Quả</th>
				
				</tr>
			</thead>
			<tbody>
			
				<c:forEach items="${sinhvienList}" var="sv">
					<tr>

						<td>${sv.maDeTai}</td>
						<td>${sv.tenDeTai}</td>
						<td>${sv.SVThucHien}</td>
					
					 <td><a href="${pageContext.request.contextPath}/ketquasinhvien">KetQua</a></td>
			
					
					</tr>
				</c:forEach>
				


			</tbody>

		</table>
		<h2></h2>
	</div>

	<div id="footer">

		<img class="img-rounded img-responsive"
			src="assets/img/footerSPKT.PNG" />

	</div>


</body>
</html>