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
 import model.DeTai;
@WebServlet(urlPatterns = { "/detai" })
public class NopDeTai extends HttpServlet {
    private static final long serialVersionUID = 1L;


 
    public NopDeTai() {
        super();
    }
 
    // Hiển thị trang Login.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        // Forward tới trang /WEB-INF/views/loginView.jsp
        // (Người dùng không thể truy cập trực tiếp
        // vào các trang JSP đặt trong thư mục WEB-INF).
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/QuanLyDeTai.jsp");
 
        dispatcher.forward(request, response);
 
    }
 
    // Khi người nhập userName & password, và nhấn Submit.
    // Phương thức này sẽ được thực thi.

	
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String MaDeTai= request.getParameter("mdt");
        String TenDeTai = request.getParameter("tdt");
        String NgayNop =request.getParameter("nn");
    
		
		
        String LinhVuc = request.getParameter("lv");
        String MaGV = request.getParameter("mgv");
        String ThaoLuan = request.getParameter("tl");
        String Duyet = request.getParameter("duyet");
        String SVTH = request.getParameter("svth");
        boolean kq=false;
        
        String hassError="";
        	DeTai detai=new DeTai(MaDeTai,TenDeTai,NgayNop,LinhVuc,MaGV,ThaoLuan,Duyet,SVTH);
 
            Connection conn = MyUtil.getStoredConnection(request);
            try {
                // Tìm user trong DB.
                detai = DBUtil.insertDeTai(conn, detai);
                	kq=true;
               
             
              
            } catch (SQLException e) {
                e.printStackTrace();
               
            }
            if(kq)
            	hassError="Gửi Thông Tin Thành Công";
            else hassError="Gửi Thông Tin Thất Bại";
    
  
            request.setAttribute("detai", detai);
            request.setAttribute("Error", hassError);
             
            // Forward sang /WEB-INF/views/productListView.jsp
            RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/QuanLyDeTai.jsp");
            dispatcher.forward(request, response);
        	
        }
    }

    
 

