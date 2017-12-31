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
	import model.DeTai_SinhVien;
	 
	@WebServlet(urlPatterns = { "/detaisinhvien" })
	public class DeTai_SinhVienList extends HttpServlet {
	    private static final long serialVersionUID = 1L;
	 
	    public DeTai_SinhVienList() {
	        super();
	    }
	 
	    @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	    	 RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/GiaHanVaHuy.jsp");
	 	        dispatcher.forward(request, response);
	    }
	 
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	 Connection conn = MyUtil.getStoredConnection(request);
	 	   String madetai=request.getParameter("madt");
	 	   String masv=request.getParameter("masv");
	 	   String lydo=request.getParameter("lydo");
	 	   String thoigiangiahan=request.getParameter("thoigiangiahan");
	 	String giahan=request.getParameter("giahan");
	 	 boolean kqgiahan = "X".equals(giahan);
	 
	 	 String hassError="";
	 	 if(kqgiahan) {
	 		 DeTai_SinhVien dtsv=new DeTai_SinhVien(masv,madetai,lydo,thoigiangiahan);
	 	        try {
	 	            dtsv= DBUtil.queryDTSV(conn,dtsv);
	 	             hassError="Kết Quả Thành Công";
	 	            request.setAttribute("detaisinhvien", dtsv);
	 	        } catch (SQLException e) {
	 	            e.printStackTrace();
	 	         
	 	        }
	 	 	}else
	 	 {
	 		 hassError="Gửi Thất Bại";
	 	 }
	 	 request.setAttribute("Error", hassError);
	 	        // Lưu thông tin vào request attribute trước khi forward sang views.
	 	       
	 	       
	 	    
	 	         
	 	        // Forward sang /WEB-INF/views/productListView.jsp
	 	        RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/GiaHanVaHuy.jsp");
	 	        dispatcher.forward(request, response);

	 	
	 	 }
	 	    
	    }
	 
	
