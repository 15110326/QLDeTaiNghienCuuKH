<!DOCTYPE html>
<html lang="en">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script src="JS/jquery-3.2.1.min.js"></script>
<script src="JS/TrangThongBao.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>TRƯỜNG ĐẠI HỌC SƯ PHẠM KỸ THUẬT TP.HCM - Trang đăng kí
	đề tài</title>
<style>
#footer {
	background: #F1F1F1;
	margin-top: 500px;
	padding-top: 20px;
}
</style>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>


</head>
<body>
	<div id="header">

		<img border="0" src="assets/img/Capture.PNG" />
		<nav class="navbar navbar-inverse navbar-static-top" role="navigation"
			style="background: #87CEEB; color: white">
			<a class="navbar-brand" href="#"> Quản lý đề tài nghiên cứu khoa
				học </a>
			<ul class="nav nav-tabs">
				<li><a href="#TrangChu" type="button" id="TrangChu">TRANG
						CHỦ</a></li>
				<li><a href="#ThongBao" type="button" id="ThongBao">VĂN
						BẢN-BIỂU MẪU</a></li>

				<li><a href="#ThongKe" type="button" id="ThongKe">GIỚI
						THIỆU</a></li>
				<li><a href="#ThongKe" type="button" id="ThongKe">LIÊN HỆ</a></li>

				<li class="nav navbar-nav navbar-right"><a href="#DangNhap"
					type="button" id="DangNhap"><span
						class="glyphicon glyphicon-log-in"></span> ĐĂNG NHẬP</a></li>
			</ul>
		</nav>

	</div>
	<!--/header-->
	<div class="container">
		<div class="row">
			<div class="col-md-7">
				<div class="carousel slide" data-ride="carousel" id="carousel-1">
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img class="img-thumbnail img-responsive"
								src="assets/img/img1.jpg" alt="Slide Image" width="940"
								height="443">
						</div>
						<div class="item">
							<img class="img-thumbnail img-responsive"
								src="assets/img/img2.jpg" alt="Slide Image" width="940"
								height="443">
						</div>
						<div class="item">
							<img class="img-thumbnail img-responsive"
								src="assets/img/img3.jpg" alt="Slide Image" width="940"
								height="443">
						</div>
						<div class="item">
							<img class="img-thumbnail img-responsive"
								src="assets/img/img4.jpg" alt="Slide Image">
						</div>
						<div class="item">
							<img class="img-thumbnail img-responsive"
								src="assets/img/img5.jpg" alt="Slide Image">
						</div>
						<div class="item">
							<img class="img-thumbnail img-responsive"
								src="assets/img/img6.jpg" alt="Slide Image">
						</div>
					</div>
					<div>
						<a class="left carousel-control" href="#carousel-1" role="button"
							data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i><span
							class="sr-only">Previous</span></a><a class="right carousel-control"
							href="#carousel-1" role="button" data-slide="next"><i
							class="glyphicon glyphicon-chevron-right"></i><span
							class="sr-only">Next</span></a>
					</div>
					<ol class="carousel-indicators">
						<li data-target="#carousel-1" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-1" data-slide-to="1"></li>
						<li data-target="#carousel-1" data-slide-to="2"></li>
						<li data-target="#carousel-1" data-slide-to="3"></li>
						<li data-target="#carousel-1" data-slide-to="4"></li>
						<li data-target="#carousel-1" data-slide-to="5"></li>
					</ol>
				</div>
			</div>
			<div class="col-md-4 col-md-offset-1">
				<div class="thumbnail">
					<img src="assets/img/TIN KHCN.png">
					<div class="row">
						<div class="col-md-12">
							<span class="text-danger"><strong>Đăng ngày
									06/02/2017</strong></span>
						</div>
						<div class="col-md-12">
							<a href="#">Học sinh làm khoa học từ thực tiễn</a>
						</div>
						<div class="col-md-12">
							<span class="text-danger"><strong>Đăng ngày
									08/07/2016</strong></span>
						</div>
						<div class="col-md-12">
							<a href="#">Internet of Things là gì ? Tại sao nó sẽ trở
								thành xu hướng của tương lai ?</a>
						</div>
						<div class="col-md-12">
							<span class="text-danger"><strong>Đăng ngày
									15/04/2016</strong></span>
						</div>
						<div class="col-md-12">
							<a href="#">Được "thưởng" hàng triệu đô cho công lọc nước
								tiểu thành nước uống</a>
						</div>
						<div class="col-md-12">
							<span class="text-danger"><strong>Đăng ngày
									08/04/2016</strong></span>
						</div>
						<div class="col-md-12">
							<a href="#">Cần chuẩn bị những gì khi gia nhập Cộng đồng Kinh
								tế ASEAN AEC ?</a>
						</div>
						<div class="col-md-12">
							<span class="text-danger"><strong>Đăng ngày
									15/04/2016</strong></span>
						</div>
						<div class="col-md-12">
							<a href="#">Đừng bao giờ mua những loaiji trái cây có mã code
								bắt đầu bằng số 8</a>
						</div>
						<div class="col-md-12">
							<span class="text-danger"><strong>Đăng ngày
									22/05/2015</strong></span>
						</div>
						<div class="col-md-12">
							<a href="#">Xe hơi tự lái của Google sắp "trình diễn" trên
								đường phố</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<section>
			<br>
			<br>
		</section>
		<div class="row">
			<div class="col-md-4">
				<div class="thumbnail">
					<img src="assets/img/THONG BAO GV.png">
					<h4 class="text-primary">Thông báo về việc kê khai khối lượng
						NCKH năm học 2016-2017</h4>
					<div class="thumbnail">
						<img src="assets/img/GetArticleImage.jpg" /> <a href="#"
							class="text-muted"> &gt;&gt; Thông báo về việc báo cáo tình
							hình thực hiện đề tài cấp trường năm 2017 <strong>25/10/2017</strong>
						</a> <br> <a href="#" class="text-muted"> &gt;&gt; Thông báo
							về việc triển khai sử dụng và khai thác các cơ sở dữ liệu trực
							tuyến <strong>19/10/2017</strong>
						</a> <br> <a href="#" class="text-muted"> &gt;&gt; Thông báo
							tổ chức Hội thảo quốc tế về IoT 2017 ngày 09/6/2017 <strong>05/06/2017</strong>
						</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">
					<img src="assets/img/THONG BAO SV.png">
					<div class="caption">
						<h3>Thumbnail label</h3>
						<p>Nullam id dolor id nibh ultricies vehicula ut id elit. Cras
							justo odio, dapibus ac facilisis in, egestas eget quam. Donec id
							elit non mi porta gravida at eget metus.</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">
					<img src="assets/img/CAC TRANG LIEN KET.png">
					<div class="thumbnail">
						<img src="assets/img/tapchi.png">
					</div>
					<div class="thumbnail">
						<img src="assets/img/capnhatbaibao.jpg">
					</div>
					<div class="thumbnail">
						<img src="assets/img/eureka.jpg">
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<img class="img-rounded img-responsive"
			src="assets/img/footerSPKT.PNG">
	</div>


</body>
</html>