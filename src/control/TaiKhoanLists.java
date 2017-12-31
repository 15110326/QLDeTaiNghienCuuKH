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

	import model.DBUtil;
	import model.MyUtil;
import model.TaiKhoan;

	@WebServlet(urlPatterns = { "/taikhoanlist" })
	public class TaiKhoanLists extends HttpServlet {
	    private static final long serialVersionUID = 1L;
	 
	    public TaiKhoanLists() {
	        super();
	    }
	 
	    @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        Connection conn = MyUtil.getStoredConnection(request);
	   
	 {  String errorString = null;
	        List<TaiKhoan> list = null;
	    
	        try {
	            list = DBUtil.themTaiKhoan(conn);
	        
	        } catch (SQLException e) {
	            e.printStackTrace();
	            errorString = e.getMessage();
	        }
	        // Lưu thông tin vào request attribute trước khi forward sang views.
	        request.setAttribute("errorString", errorString);
	        request.setAttribute("taikhoanlist", list);
	     
	         
	        // Forward sang /WEB-INF/views/productListView.jsp
	        RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/Admin.jsp");
	        dispatcher.forward(request, response);
	 }
	    }
	 
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        doGet(request, response);
	    }
	 
	}
