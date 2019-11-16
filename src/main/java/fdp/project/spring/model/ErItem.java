package fdp.project.spring.model;

public class ErItem {
	private String dutyAddr = null;
	private String dutyName = null;
	private String dutyTel = null;
	private Double wgs84Lat = null;
	private Double wgs84Lon = null;
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
	public Double getWgs84Lat() {
		return wgs84Lat;
	}
	public void setWgs84Lat(Double wgs84Lat) {
		this.wgs84Lat = wgs84Lat;
	}
	public Double getWgs84Lon() {
		return wgs84Lon;
	}
	public void setWgs84Lon(Double wgs84Lon) {
		this.wgs84Lon = wgs84Lon;
	}
	@Override
	public String toString() {
		return "ErItem [dutyAddr=" + dutyAddr + ", dutyName=" + dutyName + ", dutyTel=" + dutyTel + ", wgs84Lat="
				+ wgs84Lat + ", wgs84Lon=" + wgs84Lon + "]";
	}
	public ErItem(String dutyAddr, String dutyName, String dutyTel, Double wgs84Lat, Double wgs84Lon) {
		super();
		this.dutyAddr = dutyAddr;
		this.dutyName = dutyName;
		this.dutyTel = dutyTel;
		this.wgs84Lat = wgs84Lat;
		this.wgs84Lon = wgs84Lon;
	}
}
