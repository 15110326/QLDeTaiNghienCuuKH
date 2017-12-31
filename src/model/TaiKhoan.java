package model;

public class TaiKhoan {
	 
	   public static final String GENDER_MALE ="M";
	   public static final String GENDER_FEMALE = "F";
	    
	   private String MaTK;
	   private String MatKhau;
	   private String Quyen;
	  
	 
	   public TaiKhoan(String taikhoan, String matkhau2, String quyen2) {
		   this.MaTK=taikhoan;
		   this.MatKhau=matkhau2;
		   this.Quyen=quyen2;
	   }


	public TaiKhoan() {
	
	}

	public String getMaTK() {
		return MaTK;
	}


	public void setMaTK(String maTK) {
		MaTK = maTK;
	}


	public String getMatKhau() {
		return MatKhau;
	}


	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}


	public String getQuyen() {
		return Quyen;
	}


	public void setQuyen(String quyen) {
		Quyen = quyen;
	}
	    
}  