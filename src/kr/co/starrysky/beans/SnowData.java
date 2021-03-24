package kr.co.starrysky.beans;

public class SnowData {

	private int snow_Probability; // 눈 올 확률
	private double snow_Value; // 적설량
	private String snow_Unit;  // 적설량 단위
	private int snow_UnitType; // 적설량 단위 타입
	
	private float hoursOfSnow; // 눈이 몇시간동안 오는지

	public int getSnow_Probability() {
		return snow_Probability;
	}

	public void setSnow_Probability(int snow_Probability) {
		this.snow_Probability = snow_Probability;
	}

	public double getSnow_Value() {
		return snow_Value;
	}

	public void setSnow_Value(double snow_Value) {
		this.snow_Value = snow_Value;
	}

	public String getSnow_Unit() {
		return snow_Unit;
	}

	public void setSnow_Unit(String snow_Unit) {
		this.snow_Unit = snow_Unit;
	}

	public int getSnow_UnitType() {
		return snow_UnitType;
	}

	public void setSnow_UnitType(int snow_UnitType) {
		this.snow_UnitType = snow_UnitType;
	}

	public float getHoursOfSnow() {
		return hoursOfSnow;
	}

	public void setHoursOfSnow(float hoursOfSnow) {
		this.hoursOfSnow = hoursOfSnow;
	}
	
	
	

}
