package model;


public class DeTai {




	private String MaDeTai;
	private String TenDeTai;

	private String NgayNop;
	private String LinhVuc;
	private String MaGV_HD;
	private String ThaoLuan;
	private String Duyet;
	private String SVThucHien;
	
	public DeTai(String maDT, String tenDeTai2,String ngayNop2,String linhVuc2, String maGV, String thaoLuan2,
			String duyet2, String sVThucHien2) {

		this.MaDeTai=maDT;
		 this.TenDeTai=tenDeTai2;
		
		 this.NgayNop=ngayNop2;
		 this.LinhVuc=linhVuc2;
		this.MaGV_HD=maGV;
		 this.ThaoLuan=thaoLuan2;
		 this.Duyet=duyet2;
		 this.SVThucHien=sVThucHien2;
	}
	public DeTai(String maDT, String tenDeTai2, String sVThucHien2) {

		this.MaDeTai=maDT;
		 this.TenDeTai=tenDeTai2;
		
		
		 this.SVThucHien=sVThucHien2;
	}
	public String getMaDeTai() {
		return MaDeTai;
	}
	public void setMaDeTai(String maDeTai) {
		MaDeTai = maDeTai;
	}
	public String getTenDeTai() {
		return TenDeTai;
	}
	public void setTenDeTai(String tenDeTai) {
		TenDeTai = tenDeTai;
	}
	
	public String getNgayNop() {
		return NgayNop;
	}
	public void setNgayNop(String ngayNop) {
		NgayNop = ngayNop;
	}
	public String getLinhVuc() {
		return LinhVuc;
	}
	public void setLinhVuc(String linhVuc) {
		LinhVuc = linhVuc;
	}
	public String getMaGV_HD() {
		return MaGV_HD;
	}
	public void setMaGV_HD(String maGV_HD) {
		MaGV_HD = maGV_HD;
	}
	public String getThaoLuan() {
		return ThaoLuan;
	}
	public void setThaoLuan(String thaoLuan) {
		ThaoLuan = thaoLuan;
	}
	public String getDuyet() {
		return Duyet;
	}
	public void setDuyet(String duyet) {
		Duyet = duyet;
	}
	public String getSVThucHien() {
		return SVThucHien;
	}
	public void setSVThucHien(String sVThucHien) {
		SVThucHien = sVThucHien;
	}




	
}
