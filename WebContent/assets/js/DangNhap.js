/*$(document).ready(
		function() {
			   $("#ThongBao").click(function(){
			   		location.href="TrangThongBao.jsp"
				
			   });

			   $("#TrangChu").click(function(){
			   		
					  
				   location.href="TrangChu.jsp";
				
			   });
			   $("#DangKy").click(function(){
			   		
					  
				   location.href="TrangChu.jsp";
				
			   });
			   $("#DangNhap").click(function(){
			   		
					  
				   location.href="DangNhap.jsp";
				 
			   });

			   $("#Thống Kê").click(function(){
			   		
					  
				   location.href="TrangChu.jsp";
				
			   });

			   $("#username_error_message").hide();
				$("#password_error_message").hide();

				var error_username = false;
				var error_password = false;

				$("#form_username").focusout(function() {
					check_username();
				});

				$("#form_password").focusout(function() {
					check_password();
				});

				function check_username() {
					var username_length = $("#form_username").val().length;
					if (username_length < 5 || username_length > 20) {
						$("#username_error_message").html(
								"Tên đăng nhập từ 5 đến 20 ký tự !");
						$("#username_error_message").show();
						error_username = true;
					} else {
						$("#username_error_message").hide();
					}
				}
				;

				function check_password() {
					var password_length = $("#form_password").val().length;
					if (password_length < 8) {
						$("#password_error_message").html("Mật khẩu ít nhất 8 ký tự !");
						$("#password_error_message").show();
						error_password = true;
					} else {
						$("#password_error_message").hide();
					}
				}
				;

			$("#username_error_message").hide();
			$("#password_error_message").hide();

			var error_username = false;
			var error_password = false;

			$("#form_username").focusout(function() {
				check_username();
			});

			$("#form_password").focusout(function() {
				check_password();
			});

			function check_username() {
				var username_length = $("#form_username").val().length;
				if (username_length < 5 || username_length > 20) {
					$("#username_error_message").html(
							"Tên đăng nhập từ 5 đến 20 ký tự !");
					$("#username_error_message").show();
					error_username = true;
				} else {
					$("#username_error_message").hide();
				}
			}
			;

			function check_password() {
				var password_length = $("#form_password").val().length;
				if (password_length < 8) {
					$("#password_error_message").html("Mật khẩu ít nhất 8 ký tự !");
					$("#password_error_message").show();
					error_password = true;
				} else {
					$("#password_error_message").hide();
				}
			}
			;
		
			document.getElementById("Dangnhap").onclick = function()
            {		check_username();
			       check_password();
					var checkbox = document.getElementById("admin");
					var checkbox1 = document.getElementById("sinhvien");
					var checkbox2 = document.getElementById("chunhiem");
					var checkbox3 = document.getElementById("hoidong");
					var checkbox4 = document.getElementById("phong");
					
		            if (checkbox.checked == true){
                           location.href="Admin.jsp";
		            }
		        	
		            if (checkbox1.checked == true){
                           location.href="TrangSinhVien.jsp";
		            }
		            if (checkbox2.checked == true){
                        location.href="ChuNhiem.jsp";
		            }
		            if (checkbox3.checked == true){
                        location.href="HoiDong.jsp";
		            }
		            if (checkbox4.checked == true){
                        location.href="PhongQuanLy.jsp";
		            }
             
             
                
             };
             
        	document.getElementById("DangNhap").onclick = function ()
            {			check_username();
            			check_password();
            			var checkbox1 = document.getElementsByName("optradio4");
            if (checkbox1.checked == true){
            	location.href="TrangSinhVien.jsp";
            	}
            };
            
		});
		*/