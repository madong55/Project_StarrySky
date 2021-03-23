package kr.co.starrysky.beans;

public class WindData {
	
	private double wind_speed_Value; // 바람 세기
	private String wind_speed_Unit;  // 바람 단위
	private int wind_speed_UnitType; // 바람 단위 타입
	
	public double getWind_speed_Value() {
		return wind_speed_Value;
	}
	
	public void setWind_speed_Value(double wind_speed_Value) {
		this.wind_speed_Value = wind_speed_Value;
	}
	
	public String getWind_speed_Unit() {
		return wind_speed_Unit;
	}
	
	public void setWind_speed_Unit(String wind_speed_Unit) {
		this.wind_speed_Unit = wind_speed_Unit;
	}
	
	public int getWind_speed_UnitType() {
		return wind_speed_UnitType;
	}
	
	public void setWind_speed_UnitType(int wind_speed_UnitType) {
		this.wind_speed_UnitType = wind_speed_UnitType;
	}
	
	

}
