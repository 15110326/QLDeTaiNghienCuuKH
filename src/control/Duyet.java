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

	@WebServlet(urlPatterns = { "/duyet" })
public class Duyet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public Duyet() {  super();}
		 
	  
	 
	    // Hiển thị trang Login.
	    @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	 
	        // Forward tới trang /WEB-INF/views/loginView.jsp
	        // (Người dùng không thể truy cập trực tiếp
	        // vào các trang JSP đặt trong thư mục WEB-INF).
	        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/TrangThai.jsp");
	 
	        dispatcher.forward(request, response);
	 
	    }

	 
	    // Khi người nhập userName & password, và nhấn Submit.
	    // Phương thức này sẽ được thực thi.
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String MaDeTai= request.getParameter("mdt");
	       String Duyet="Yes";

	    
	 
	            Connection conn = MyUtil.getStoredConnection(request);
	            try {
	                // Tìm user trong DB.
	                 DBUtil.guiduyet(conn, Duyet,MaDeTai);
	 
	               
	             
	              
	            } catch (SQLException e) {
	                e.printStackTrace();
	               
	            }
	    
	  
	            
	             
	            // Forward sang /WEB-INF/views/productListView.jsp
	            RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/detailist");
	            dispatcher.forward(request, response);
	        	
	        }
	    
		// TODO Auto-generated constructor stub
	}


