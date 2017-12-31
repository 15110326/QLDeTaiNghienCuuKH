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
	import model.DeTai;
	 
	@WebServlet(urlPatterns = { "/detailist" })
	public class DeTaiList extends HttpServlet {
	    private static final long serialVersionUID = 1L;
	 
	    public DeTaiList() {
	        super();
	    }
	 
	    @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        Connection conn = MyUtil.getStoredConnection(request);
	      String Duyet="No";
	      String Duyet1="Yes";
	 {  String errorString = null;
	        List<DeTai> list = null;
	        List<DeTai> list1 = null;
	        try {
	            list = DBUtil.queryDeTai(conn, Duyet);
	            list1=DBUtil.queryDeTai(conn, Duyet1);
	        } catch (SQLException e) {
	            e.printStackTrace();
	            errorString = e.getMessage();
	        }
	        // Lưu thông tin vào request attribute trước khi forward sang views.
	        request.setAttribute("errorString", errorString);
	        request.setAttribute("detaiList", list);
	        request.setAttribute("detaiList1", list1);
	         
	        // Forward sang /WEB-INF/views/productListView.jsp
	        RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/ChuNhiem.jsp");
	        dispatcher.forward(request, response);
	 }
	    }
	 
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        doGet(request, response);
	    }
	 
	}
