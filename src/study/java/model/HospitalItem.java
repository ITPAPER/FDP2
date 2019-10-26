package study.java.model;

import java.io.Serializable;

public class HospitalItem implements Serializable{

	private static final long serialVersionUID = 6831294358796002762L;
	private String yadmNm;
	private String addr;
	private double XPos;
	private double YPos;
	private String hospUrl;
	private String telno;
	public String getYadmNm() {
		return yadmNm;
	}
	public void setYadmNm(String yadmNm) {
		this.yadmNm = yadmNm;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public double getXPos() {
		return XPos;
	}
	public void setXPos(double xPos) {
		XPos = xPos;
	}
	public double getYPos() {
		return YPos;
	}
	public void setYPos(double yPos) {
		YPos = yPos;
	}
	public String getHospUrl() {
		return hospUrl;
	}
	public void setHospUrl(String hospUrl) {
		this.hospUrl = hospUrl;
	}
	public String getTelno() {
		return telno;
	}
	public void setTelno(String telno) {
		this.telno = telno;
	}
	public HospitalItem(String yadmNm, String addr, double xPos, double yPos, String hospUrl, String telno) {
		super();
		this.yadmNm = yadmNm;
		this.addr = addr;
		XPos = xPos;
		YPos = yPos;
		this.hospUrl = hospUrl;
		this.telno = telno;
	}
	@Override
	public String toString() {
		return "hospitalItem [yadmNm=" + yadmNm + ", addr=" + addr + ", XPos=" + XPos + ", YPos=" + YPos + ", hospUrl="
				+ hospUrl + ", telno=" + telno + "]";
	}
	
	

}
