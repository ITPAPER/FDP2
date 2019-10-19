package study.java.model;

import java.io.Serializable;

public class ErItem implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8116286722229613235L;
	private String dutyAddr = null;
	private String dutyName = null;
	private String dutyTel = null;
	private Double Lon = null;
	private Double Lan = null;
	public String getDutyAddr() {
		return dutyAddr;
	}
	public void setDutyAddr(String dutyAddr) {
		this.dutyAddr = dutyAddr;
	}
	public String getDutyName() {
		return dutyName;
	}
	public void setDutyName(String dutyName) {
		this.dutyName = dutyName;
	}
	public String getDutyTel() {
		return dutyTel;
	}
	public void setDutyTel(String dutyTel) {
		this.dutyTel = dutyTel;
	}
	public Double getLon() {
		return Lon;
	}
	public void setLon(Double lon) {
		Lon = lon;
	}
	public Double getLan() {
		return Lan;
	}
	public void setLan(Double lan) {
		Lan = lan;
	}
	public ErItem(String dutyAddr, String dutyName, String dutyTel, Double lon, Double lan) {
		super();
		this.dutyAddr = dutyAddr;
		this.dutyName = dutyName;
		this.dutyTel = dutyTel;
		Lon = lon;
		Lan = lan;
	}
	@Override
	public String toString() {
		return "ErItem [dutyAddr=" + dutyAddr + ", dutyName=" + dutyName + ", dutyTel=" + dutyTel + ", Lon=" + Lon
				+ ", Lan=" + Lan + "]";
	}
	
}