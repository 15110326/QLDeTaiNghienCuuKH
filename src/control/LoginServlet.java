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
import javax.servlet.http.HttpSession;
 
import model.*;
 
@WebServlet(urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
	private boolean remember2;
	private boolean remember3;
	private boolean remember4;
	private boolean remember5;
 
    public LoginServlet() {
        super();
    }
 
    // Hiển thị trang Login.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        // Forward tới trang /WEB-INF/views/loginView.jsp
        // (Người dùng không thể truy cập trực tiếp
        // vào các trang JSP đặt trong thư mục WEB-INF).
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/DangNhap.jsp");
 
        dispatcher.forward(request, response);
 
    }
 
    // Khi người nhập userName & password, và nhấn Submit.
    // Phương thức này sẽ được thực thi.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String MaTK = request.getParameter("hoten");
        String MatKhau = request.getParameter("pass");
        String rememberMeStr = request.getParameter("sinhvien");
        boolean remember = "Y".equals(rememberMeStr);
        String rememberMe2 = request.getParameter("chunhiem");
        remember2 = "C".equals(rememberMe2);
        String rememberMe3 = request.getParameter("admin");
        remember3 = "A".equals(rememberMe3);

        String rememberMe4 = request.getParameter("phong");
        remember4 = "P".equals(rememberMe4);

        String rememberMe5 = request.getParameter("hoidong");
        remember5 = "H".equals(rememberMe5);


    
 
        TaiKhoan user = null;
        boolean hasError = false;
        String errorString = null;
 
        if (MaTK == null || MatKhau == null || MaTK.length() == 0 || MatKhau.length() == 0 ) {
            hasError = true;
            errorString = "Required username and password!";
        } else {
            Connection conn = MyUtil.getStoredConnection(request);
            try {
                // Tìm user trong DB.
                user = DBUtil.findUser(conn, MaTK, MatKhau);
 
                if ((user == null  ))
                {
                    hasError = true;
                    errorString = "User Name or password invalid";
                }
             
              
            } catch (SQLException e) {
                e.printStackTrace();
                hasError = true;
                errorString = e.getMessage();
            }
        }
        // Trong trường hợp có lỗi,
        // forward (chuyển hướng) tới /WEB-INF/views/login.jsp
        if (hasError) {
            user = new TaiKhoan();
            user.setMaTK(MaTK);
            user.setMatKhau(MatKhau);
 
            // Lưu các thông tin vào request attribute trước khi forward.
            request.setAttribute("errorString", errorString);
            request.setAttribute("user", user);
 
            // Forward (Chuyển tiếp) tới trang /WEB-INF/views/login.jsp
            RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/DangNhap.jsp");
 
            dispatcher.forward(request, response);
        }
        // Trường hợp không có lỗi.
        // Lưu thông tin người dùng vào Session.
        // Và chuyển hướng sang trang userInfo.
        else {
        	
            HttpSession session = request.getSession();
            MyUtil.storeLoginedUser(session, user);
            
            // Kiểm tra người dùng đã đăng nhập (login) chưa.
            TaiKhoan loginedUser = MyUtil.getLoginedUser(session);
            request.setAttribute("user",loginedUser);
            if(remember)
            {
            	MyUtil.storeUserCookie(response, user);
            	 RequestDispatcher dispatcher 
                 = this.getServletContext().getRequestDispatcher("/SinhVienlist");

                 dispatcher.forward(request, response);
             
            }
             if(remember2)
            {MyUtil.storeUserCookie(response, user);
            	 RequestDispatcher dispatcher 
                 = this.getServletContext().getRequestDispatcher("/detailist");

                 dispatcher.forward(request, response);
            }
            if(remember3)
            {MyUtil.storeUserCookie(response, user);
            	 RequestDispatcher dispatcher 
                 = this.getServletContext().getRequestDispatcher("/taikhoanlist");

                 dispatcher.forward(request, response);
            }
            if(remember4)
            {MyUtil.storeUserCookie(response, user);
            	 RequestDispatcher dispatcher 
                 = this.getServletContext().getRequestDispatcher("/PhongQuanLy.jsp");

                 dispatcher.forward(request, response);
            }
            if(remember5)
            {	MyUtil.storeUserCookie(response, user);
            	 RequestDispatcher dispatcher 
                 = this.getServletContext().getRequestDispatcher("/HoiDong.jsp");

                 dispatcher.forward(request, response);
            }
            if (loginedUser == null) {
                // Redirect (Chuyển hướng) tới trang login.
                response.sendRedirect(request.getContextPath() + "/login");
                return;
            }
        
        	
        }
    }
}
    
 
