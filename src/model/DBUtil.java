package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
 

 
public class DBUtil {
 


	public static TaiKhoan findUser(Connection conn, 
            String MaTK, String MatKhau) throws SQLException {
 
        String sql = "Select * from TAIKHOAN a " 
                + " where MaTK = ? and MatKhau= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1,MaTK);
        pstm.setString(2, MatKhau);
        ResultSet rs = pstm.executeQuery();
 
        if (rs.next()) {
            String Quyen = rs.getString("Quyen");
            TaiKhoan user = new TaiKhoan();
            user.setMaTK(MaTK);
            user.setMatKhau(MatKhau);
            user.setQuyen(Quyen);
            return user;
        }
        return null;
    }
 
    public static TaiKhoan findUser(Connection conn, String MaTK) throws SQLException {
 
        String sql ="Select * from TAIKHOAN a " 
                + " where MaTK = ? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, MaTK);
 
        ResultSet rs = pstm.executeQuery();
 
        if (rs.next()) {
            String MatKhau = rs.getString("MatKhau");
            String Quyen = rs.getString("Quyen");
            TaiKhoan user = new TaiKhoan();
            user.setMaTK(MaTK);
            user.setMatKhau(MatKhau);
            user.setQuyen(Quyen);
            return user;
        }
        return null;
    }
    public static List<DeTai> querySinhVien(Connection conn) throws SQLException {
        String sql = "Select * from DeTai ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
   
        ResultSet rs = pstm.executeQuery();
        List<DeTai> list = new ArrayList<DeTai>();
        while (rs.next()) {
        	String  MaDT = rs.getString("MaDeTai");
             String TenDeTai = rs.getString("TenDeTai");
             String SVThucHien = rs.getString("SVThucHien");
             DeTai detai = new DeTai(MaDT,TenDeTai,SVThucHien);
             
            
            list.add(detai);
        }
        return list;
    }
    public static List<DeTai> queryDeTai(Connection conn,String Duyet) throws SQLException {
        String sql = "Select * from DeTai where Duyet=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, Duyet);
        ResultSet rs = pstm.executeQuery();
        List<DeTai> list = new ArrayList<DeTai>();
        while (rs.next()) {
        	String  MaDT = rs.getString(1);
             String TenDeTai = rs.getString(2);
             String NgayNop = rs.getString(3);
             String LinhVuc = rs.getString(4);
             String MaGV = rs.getString(5);
             String ThaoLuan = rs.getString(6);
             
             String SVThucHien = rs.getString(8);
             DeTai detai = new DeTai(MaDT,TenDeTai,NgayNop,LinhVuc,MaGV,ThaoLuan,Duyet,SVThucHien);
             detai.setMaDeTai(MaDT);
             detai.setTenDeTai(TenDeTai);
             detai.setNgayNop(NgayNop);
             detai.setLinhVuc(LinhVuc);
             detai.setMaGV_HD(MaGV);
             detai.setThaoLuan(ThaoLuan);
            
            list.add(detai);
        }
        return list;
    }
    public static List<DeTai_SinhVien> queryDeTaiSinhVien(Connection conn) throws SQLException {
        String sql = "Select MaSV,MaDeTai,TenDeTai,ThoiGianHetHan,KetQua from DeTai_SinhVien";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
    
        ResultSet rs = pstm.executeQuery();
        List<DeTai_SinhVien> list = new ArrayList<DeTai_SinhVien>();
        while (rs.next()) {
        	String  MaSV = rs.getString("MaSV");
             String MaDeTai = rs.getString("MaDeTai");
             String TenDeTai= rs.getString("TenDeTai");
             String ThoiGianHetHan = rs.getString("ThoiGianHetHan");
             String KetQua = rs.getString("KetQua");
         
             DeTai_SinhVien detaisv = new DeTai_SinhVien(MaSV,MaDeTai,TenDeTai,ThoiGianHetHan,KetQua);
           
            
            list.add(detaisv);
        }
        return list;
    }
    public static DeTai_SinhVien  queryDTSV(Connection conn,DeTai_SinhVien DTSV) throws SQLException {
        String sql = "Insert into DeTai_SinhVien(MaSV,MaDeTai,LyDo,ThoiGianGiaHan) values (?,?,?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1,DTSV.getMaSV());
        pstm.setString(2, DTSV.getMaDeTai());
       pstm.setString(3, DTSV.getLyDo());
        pstm.setString(4, DTSV.getThoiGianGiaHan());
        
    
 
        pstm.executeUpdate();
return DTSV;
    }
    public static SinhVien findSinhVien(Connection conn, String hoten) throws SQLException {
        String sql = "Select * from SinhVien where MaSV=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, hoten);
 
        ResultSet rs = pstm.executeQuery();
 
        while (rs.next()) {
            String MaSV = rs.getString(1);
            String HoTen = rs.getString(2);
            Date NgSinh = rs.getDate(3);
            String GioiTinh = rs.getString(4);
            String SDT = rs.getString(5);
          
           
           
            String Dchi = rs.getString(6);
            SinhVien sv = new SinhVien(MaSV, HoTen,NgSinh,GioiTinh,SDT,Dchi);
  
            return sv;
        }
        return null;
    }
    public static TaiKhoan findTaiKhoan(Connection conn, String MaTK) throws SQLException {
        String sql = "Select * from SinhVien where MaSV=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, MaTK);
 
        ResultSet rs = pstm.executeQuery();
 
        while (rs.next()) {
            MaTK = rs.getString(1);
            String MatKhau = rs.getString(2);
            String Quyen = rs.getString(3);
           
       
            TaiKhoan tk = new TaiKhoan(MaTK, MatKhau,Quyen);
  
            return tk;
        }
        return null;
    }
    public static DeTai guiDeTai(Connection conn, String MaDT) throws SQLException {
    	 
        String sql ="Select * from DeTai a " 
                + " where MaDeTai = ? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, MaDT);
 
        ResultSet rs = pstm.executeQuery();
 
        if (rs.next()) {
         
        	  MaDT = rs.getString(1);
             String TenDeTai = rs.getString(2);
             String NgayNop = rs.getString(3);
             String LinhVuc = rs.getString(4);
             String MaGV = rs.getString(5);
             String ThaoLuan = rs.getString(6);
             String Duyet = rs.getString(7);
             String SVThucHien = rs.getString(8);
             DeTai detai = new DeTai(MaDT,TenDeTai,NgayNop,LinhVuc,MaGV,ThaoLuan,Duyet,SVThucHien);
         
             return detai;
        }
        return null;
    }

	public static List <TaiKhoan> themTaiKhoan(Connection conn) throws SQLException {
   	 
        String sql ="Select * from TaiKhoan a  ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
       
        ResultSet rs = pstm.executeQuery();
        List<TaiKhoan> list = new ArrayList<TaiKhoan>();
        while (rs.next()) {
            String TaiKhoan = rs.getString(1);
        	String  MatKhau = rs.getString(2);
    
         
             String Quyen = rs.getString(3);
          
             TaiKhoan tk = new TaiKhoan(TaiKhoan,MatKhau,Quyen);
          
            list.add(tk);
        }
        return list;
     
      
       
    }
    
    
    public static void guiduyet(Connection conn, String Duyet,String MaDT) throws SQLException {
   	 
        String sql ="Update DeTai set Duyet=? where MaDeTai=? ";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, Duyet);
        pstm.setString(2, MaDT);
        pstm.executeUpdate();
	
 
 
    }

    public static void updateProduct(Connection conn, SinhVien sv) throws SQLException {
        String sql = "Update SinhVien set MaSV =?, HoTen=? where MaSV=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, sv.getMaSV());
        pstm.setString(2, sv.getHoTen());
        pstm.setString(3, sv.getSDT());
        pstm.executeUpdate();
    }

    public static void updateTaiKhoan(Connection conn, TaiKhoan tk) throws SQLException {
        String sql = "Update TaiKhoan set  MatKhau=? ,Quyen=? where MaTK=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
    
        pstm.setString(1, tk.getMatKhau());
        pstm.setString(2, tk.getQuyen());
        pstm.setString(3, tk.getMaTK());
        pstm.executeUpdate();
    }

    public static DeTai insertDeTai(Connection conn, DeTai detai) throws SQLException {
        String sql = "Insert into DeTai(MaDeTai,TenDeTai,NgayNop,LinhVuc,MaGV_HD,ThaoLuan,Duyet,SVThucHien) values (?,?,?,?,?,?,?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1,detai.getMaDeTai());
        pstm.setString(2, detai.getTenDeTai());
       pstm.setString(3, detai.getNgayNop());
        pstm.setString(4, detai.getLinhVuc());
        
        pstm.setString(5, detai.getMaGV_HD());
        
        pstm.setString(6, detai.getThaoLuan());
        
        pstm.setString(7,detai.getDuyet());
        
        pstm.setString(8, detai.getSVThucHien());
        
  
        
 
        pstm.executeUpdate();
		return detai;
    }
    public static TaiKhoan insertTaiKhoan(Connection conn, TaiKhoan taikhoan) throws SQLException {
        String sql = "Insert into TaiKhoan(MaTK,MatKhau,Quyen) values (?,?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1,taikhoan.getMaTK());
        pstm.setString(2, taikhoan.getMatKhau());
       pstm.setString(3, taikhoan.getQuyen());
       
  
        
 
        pstm.executeUpdate();
		return taikhoan;
    }
 
 
    public static void insertProduct(Connection conn, SinhVien sv) throws SQLException {
        String sql = "Insert into SinhVien(MaSV,HoTen,SDT) values (?,?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, sv.getMaSV());
        pstm.setString(2, sv.getHoTen());
        pstm.setString(3, sv.getSDT());
 
        pstm.executeUpdate();
    }
 
    public static void deleteTaiKhoan(Connection conn, String MaTK) throws SQLException {
        String sql = "Delete From TaiKhoan where MaTK=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, MaTK);
 
        pstm.executeUpdate();
    }
   
 
}