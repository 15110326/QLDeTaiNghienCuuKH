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
			<span>Tên tài khoản: ${sv.hoTen}</span>
			<button class="btn btn-default btn-sm" type="button" id="DangXuat">Đăng
				xuất</button>
		</p>
<div class="col-sm-2 col-md-offset-3">
         <form method="POST" action="${pageContext.request.contextPath}/edittaikhoan">
          
            <table border="0" >
               <tr>
                  <td>MaTK</td>
                  
                   <td> <input  name="matk" value="${tk.maTK}" /></td>
                   <td style="color:red;">${tk.maTK}</td>
               </tr>
               <tr>
                  <td>MatKhau</td>
                  <td><input type="text" name="matkhau" value="${tk.matKhau}" /></td>
               </tr>
               <tr>
                  <td>Quyen</td>
                  <td><input type="text" name="quyen" value="${taikhoan.quyen}" /></td>
               </tr>
               <tr>
                  <td colspan = "2">
                      <input type="submit" value="Submit" />
                      <a href="${pageContext.request.contextPath}/taikhoanlist">Cancel</a>
                  </td>
               </tr>
            </table>
         </form>
      
      </div>
      </div>
	<div class="container">
		<img class="img-rounded img-responsive"
			src="assets/img/footerSPKT.PNG">
	</div>
</body>
</html>