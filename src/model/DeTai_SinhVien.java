package model;



public class DeTai_SinhVien {
	private String MaSV;
	
	private String MaDeTai;
	private String TenDeTai;
	private String LyDo;
	private String ThoiGianHetHan;
	private String KetQua;
	private String ThoiGianGiaHan;
	
public DeTai_SinhVien(String masv,String madetai,String lydo,String ThoiGianGiaHan) {
	this.MaSV=masv;
	this.MaDeTai=madetai;
	this.LyDo=lydo;

	
	this.ThoiGianGiaHan=ThoiGianGiaHan;
}

	public String getMaSV() {
		return MaSV;
	}




	public void setMaSV(String maSV) {
		MaSV = maSV;
	}




	public String getMaDeTai() {
		return MaDeTai;
	}




	public void setMaDeTai(String maDeTai) {
		MaDeTai = maDeTai;
	}




	public String getLyDo() {
		return LyDo;
	}




	public void setLyDo(String lyDo) {
		LyDo = lyDo;
	}






	public DeTai_SinhVien() {
		// TODO Auto-generated constructor stub
	}

	public DeTai_SinhVien(String maSV2, String maDeTai2, String tenDeTai, String thoiGianHetHan, String ketQua) {
	this.MaSV=maSV2;
	this.MaDeTai=maDeTai2;
	this.TenDeTai=tenDeTai;
	this.ThoiGianHetHan=thoiGianHetHan;
	this.KetQua=ketQua;
	}

	public String getThoiGianGiaHan() {
		return ThoiGianGiaHan;
	}

	public void setThoiGianGiaHan(String thoiGianGiaHan) {
		ThoiGianGiaHan = thoiGianGiaHan;
	}

	public String getTenDeTai() {
		return TenDeTai;
	}

	public void setTenDeTai(String tenDeTai) {
		TenDeTai = tenDeTai;
	}

	public String getThoiGianHetHan() {
		return ThoiGianHetHan;
	}

	public void setThoiGianHetHan(String thoiGianHetHan) {
		ThoiGianHetHan = thoiGianHetHan;
	}

	public String getKetQua() {
		return KetQua;
	}

	public void setKetQua(String ketQua) {
		KetQua = ketQua;
	}

}
