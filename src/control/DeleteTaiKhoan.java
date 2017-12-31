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

import model.DBUtil;
import model.MyUtil;

 
@WebServlet(urlPatterns = { "/deletetaikhoan" })
public class DeleteTaiKhoan extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public DeleteTaiKhoan() {}
	    @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        Connection conn = MyUtil.getStoredConnection(request);
	 
	        String MaTK = (String) request.getParameter("matk");
	 
	        String errorString = null;
	 
	        try {
	            DBUtil.deleteTaiKhoan(conn, MaTK);
	        } catch (SQLException e) {
	            e.printStackTrace();
	            errorString = e.getMessage();
	        } 
	         
	        // Nếu có lỗi, forward (chuyển tiếp) sang trang thông báo lỗi.
	        if (errorString != null) {
	            // Lưu thông tin vào request attribute trước khi forward sang views.
	            request.setAttribute("errorString", errorString);
	            // 
	            RequestDispatcher dispatcher = request.getServletContext()
	                    .getRequestDispatcher("/DeleteTaiKhoan.jsp");
	            dispatcher.forward(request, response);
	        }
	        // Nếu mọi thứ tốt đẹp.
	        // Redirect (chuyển hướng) sang trang danh sách sản phẩm.
	        else {
	            response.sendRedirect(request.getContextPath() + "/taikhoanlist");
	        }
	 
	    }
	 
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        doGet(request, response);
	    }
	 
	
	}


