package model;

import java.util.Date;

public class SinhVien 
{
private String MaSV;
private String DChi;
private String HoTen;
private Date NgSinh;
private String SDT;
private String GioiTinh;
public SinhVien (String maSV2, String hoTen2, Date ngSinh2, String gioiTinh2, String sDT2, String dchi2) {
	this.MaSV=maSV2;
	this.HoTen=hoTen2;	
	this.NgSinh=ngSinh2;
	this.GioiTinh=gioiTinh2;
	this.SDT=sDT2;
	this.DChi=dchi2;
}



public String getMaSV() {
	return MaSV;
}
public void setMaSV(String maSV) {
	this.MaSV = maSV;
}
public String getDChi() {
	return DChi;
}
public void setDChi(String dChi) {
	this.DChi = dChi;
}
public String getHoTen() {
	return HoTen;
}
public void setHoTen(String hoTen) {
	this.HoTen = hoTen;
}
public Date getNgSinh() {
	return NgSinh;
}
public void setNgSinh(Date ngSinh) {
	this.NgSinh = ngSinh;
}
public String getSDT() {
	return SDT;
}
public void setSDT(String sDT) {
	this.SDT = sDT;
}
public String getGioiTinh() {
	return GioiTinh;
}
public void setGioiTinh(String gioiTinh) {
	this.GioiTinh = gioiTinh;
}
	
}