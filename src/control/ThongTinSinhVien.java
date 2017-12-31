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
import model.SinhVien;

 
@WebServlet(urlPatterns = { "/thongtin" })
public class ThongTinSinhVien extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public ThongTinSinhVien() {
        super();
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // vào các trang JSP đặt trong thư mục WEB-INF).
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/TrangThongTinSinhVien.jsp");
 
        dispatcher.forward(request, response);
    }
 
    
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	Connection conn = MyUtil.getStoredConnection(request);
     	String masv=request.getParameter("masv");

     String errorString = null;
     SinhVien list = null;
     try {
         list = DBUtil.findSinhVien(conn, masv);
     } catch (SQLException e) {
         e.printStackTrace();
         errorString = e.getMessage();
     }
  
    
     // Lưu thông tin vào request attribute trước khi forward sang views.
     request.setAttribute("errorString", errorString);
     request.setAttribute("sv", list);
      
     // Forward sang /WEB-INF/views/productListView.jsp
     RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/TrangThongTinSinhVien.jsp");
     dispatcher.forward(request, response);
    }
    }
    