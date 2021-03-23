package kr.co.starrysky.beans;

public class RainData {
	
	private int rain_Probability; // 비 올 확률
	private double rain_Value;	 // 강수량
	private String rain_Unit; 	// 강수량 단위
	private int rain_UnitType; // 강수량 단위 타입
	
	private boolean rain_hasPrecipitation; // 강수량 있으면 true
	private String rain_PrecipitationIntensity; // 강수량 있을때만 반환 
	
	private float hoursOfRain; // 비가 몇 시간 동안 오는지

	public int getRain_Probability() {
		return rain_Probability;
	}

	public void setRain_Probability(int rain_Probability) {
		this.rain_Probability = rain_Probability;
	}

	public double getRain_Value() {
		return rain_Value;
	}

	public void setRain_Value(double rain_Value) {
		this.rain_Value = rain_Value;
	}

	public String getRain_Unit() {
		return rain_Unit;
	}

	public void setRain_Unit(String rain_Unit) {
		this.rain_Unit = rain_Unit;
	}

	public int getRain_UnitType() {
		return rain_UnitType;
	}

	public void setRain_UnitType(int rain_UnitType) {
		this.rain_UnitType = rain_UnitType;
	}

	public boolean isRain_hasPrecipitation() {
		return rain_hasPrecipitation;
	}

	public void setRain_hasPrecipitation(boolean rain_hasPrecipitation) {
		this.rain_hasPrecipitation = rain_hasPrecipitation;
	}

	public String getRain_PrecipitationIntensity() {
		return rain_PrecipitationIntensity;
	}

	public void setRain_PrecipitationIntensity(String rain_PrecipitationIntensity) {
		this.rain_PrecipitationIntensity = rain_PrecipitationIntensity;
	}

	public float getHoursOfRain() {
		return hoursOfRain;
	}

	public void setHoursOfRain(float hoursOfRain) {
		this.hoursOfRain = hoursOfRain;
	}
	
	
	
	
	

}
