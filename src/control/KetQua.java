package control;

	import java.io.IOException;
	import java.sql.Connection;
	import java.sql.SQLException;
	import java.util.List;

	import javax.servlet.RequestDispatcher;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DBUtil;
	import model.MyUtil;
import model.TaiKhoan;
import model.DeTai_SinhVien;
	 
	@WebServlet(urlPatterns = { "/ketquasinhvien" })
	public class KetQua extends HttpServlet {
	    private static final long serialVersionUID = 1L;
	 
	    public KetQua() {
	        super();
	    }
	
		 
		    @Override
		    protected void doGet(HttpServletRequest request, HttpServletResponse response)
		            throws ServletException, IOException {
		        Connection conn = MyUtil.getStoredConnection(request);
	
		 {  String errorString = null;
		        List<DeTai_SinhVien> list = null;
		
		        try {
		            list = DBUtil.queryDeTaiSinhVien(conn);
		   
		        } catch (SQLException e) {
		            e.printStackTrace();
		            errorString = e.getMessage();
		        }
		        // Lưu thông tin vào request attribute trước khi forward sang views.
		        request.setAttribute("errorString", errorString);
		        request.setAttribute("detaisinhvien", list);
		      
		      
		        // Forward sang /WEB-INF/views/productListView.jsp
		        RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/KetQua.jsp");
		        dispatcher.forward(request, response);
		 }
		    }
		 
		    @Override
		    protected void doPost(HttpServletRequest request, HttpServletResponse response)
		            throws ServletException, IOException {
		        doGet(request, response);
		    }
		 
		}
 
	    
	 
	
