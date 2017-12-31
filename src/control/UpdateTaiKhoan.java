package control;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.*;
@WebServlet(urlPatterns = { "/edittaikhoan" })
public class UpdateTaiKhoan  extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public UpdateTaiKhoan(){}
		  
	@Override
		    protected void doGet(HttpServletRequest request, HttpServletResponse response)
		            throws ServletException, IOException {
		        Connection conn = MyUtil.getStoredConnection(request);
		 
		        String MaTK = (String) request.getParameter("matk");
		 
		        TaiKhoan taikhoan = null;
		 
		        String errorString = null;
		 
		        try {
		            taikhoan = DBUtil.findTaiKhoan(conn, MaTK);
		        } catch (SQLException e) {
		            e.printStackTrace();
		            errorString = e.getMessage();
		        }
		 
		        // Không có lỗi.
		        // Sản phẩm không tồn tại để edit.
		        // Redirect sang trang danh sách sản phẩm.
		        if (errorString != null && taikhoan == null) {
		            response.sendRedirect(request.getServletPath() + "/taikhoanlist");
		            return;
		        }
		 
		        // Lưu thông tin vào request attribute trước khi forward sang views.
		        request.setAttribute("errorString", errorString);
		        request.setAttribute("taikhoan", taikhoan);
		 
		        RequestDispatcher dispatcher = request.getServletContext()
		                .getRequestDispatcher("/EditTaiKhoan.jsp");
		        dispatcher.forward(request, response);
		 
		    }
		 
		    // Sau khi người dùng sửa đổi thông tin sản phẩm, và nhấn Submit.
		    // Phương thức này sẽ được thực thi.
		    @Override
		    protected void doPost(HttpServletRequest request, HttpServletResponse response)
		            throws ServletException, IOException {
		        Connection conn = MyUtil.getStoredConnection(request);
		 
		        String matk = (String) request.getParameter("matk");
		        String matkhau = (String) request.getParameter("matkhau");
		        String quyen = (String) request.getParameter("quyen");
		     
		        TaiKhoan tk = new TaiKhoan(matk,matkhau,quyen);
		 
		        String errorString = null;
		 
		        try {
		            DBUtil.updateTaiKhoan(conn, tk);
		        } catch (SQLException e) {
		            e.printStackTrace();
		            errorString = e.getMessage();
		        }
		        // Lưu thông tin vào request attribute trước khi forward sang views.
		        request.setAttribute("errorString", errorString);
		        request.setAttribute("tk", tk);
		 
		        // Nếu có lỗi forward sang trang edit.
		        if (errorString != null) {
		            RequestDispatcher dispatcher = request.getServletContext()
		                    .getRequestDispatcher("/EditTaiKhoan.jsp");
		            dispatcher.forward(request, response);
		        }
		        // Nếu mọi thứ tốt đẹp.
		        // Redirect sang trang danh sách sản phẩm.
		        else {
		            response.sendRedirect(request.getContextPath() + "/taikhoanlist");
		        }
		    }
		 
	}

