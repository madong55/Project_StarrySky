package kr.co.starrysky.beans;

public class WeatherBean {
	
	private String text; // 5일간의 날씨중에 중요한 사건을 나타내는 헤드라인
	
	private int cloudCover;  // 구름양
	
	private String sun_Rise; // 일출 시간
	private String sun_Set;  // 일몰 시간
	
	private String moon_Rise; // 달 뜨는 시간
	private String moon_Set;  // 달 지는 시간
	private int moon_Age; 	  // 월령
	
	private String shortPhrase; // 날씨 정보 간략하게 나오는
	private String longPhrase;  // 날씨 정보 길게
	
	private String airAndPollen_Name; // 꽃가루, 대기오염 물질 이름
	private int airAndPollen_Value; // 꽃가루, 대기오염 물질 값
	private String airAndPollen_Category; // 꽃가루, 대기오염 물질정도 -> 낮음, 높음, 중간..
	private int airAndPollen_CategoryValue; // 꽃가루, 대기오염 물질정도 -> 숫자로
	
	private double minimum_Value; // 온도 최소값
	private double maximum_Value; // 온도 최대값
	
	
	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public int getCloudCover() {
		return cloudCover;
	}
	
	public void setCloudCover(int cloudCover) {
		this.cloudCover = cloudCover;
	}
	
	public String getSun_Rise() {
		return sun_Rise;
	}
	
	public void setSun_Rise(String sun_Rise) {
		this.sun_Rise = sun_Rise;
	}
	
	public String getSun_Set() {
		return sun_Set;
	}
	
	public void setSun_Set(String sun_Set) {
		this.sun_Set = sun_Set;
	}
	
	public String getMoon_Rise() {
		return moon_Rise;
	}
	
	public void setMoon_Rise(String moon_Rise) {
		this.moon_Rise = moon_Rise;
	}
	
	public String getMoon_Set() {
		return moon_Set;
	}
	
	public void setMoon_Set(String moon_Set) {
		this.moon_Set = moon_Set;
	}
	
	public int getMoon_Age() {
		return moon_Age;
	}
	
	public void setMoon_Age(int moon_Age) {
		this.moon_Age = moon_Age;
	}
	
	public String getShortPhrase() {
		return shortPhrase;
	}
	
	public void setShortPhrase(String shortPhrase) {
		this.shortPhrase = shortPhrase;
	}
	
	public String getLongPhrase() {
		return longPhrase;
	}
	
	public void setLongPhrase(String longPhrase) {
		this.longPhrase = longPhrase;
	}

	public String getAirAndPollen_Name() {
		return airAndPollen_Name;
	}

	public void setAirAndPollen_Name(String airAndPollen_Name) {
		this.airAndPollen_Name = airAndPollen_Name;
	}

	public int getAirAndPollen_Value() {
		return airAndPollen_Value;
	}

	public void setAirAndPollen_Value(int airAndPollen_Value) {
		this.airAndPollen_Value = airAndPollen_Value;
	}

	public String getAirAndPollen_Category() {
		return airAndPollen_Category;
	}

	public void setAirAndPollen_Category(String airAndPollen_Category) {
		this.airAndPollen_Category = airAndPollen_Category;
	}

	public int getAirAndPollen_CategoryValue() {
		return airAndPollen_CategoryValue;
	}

	public void setAirAndPollen_CategoryValue(int airAndPollen_CategoryValue) {
		this.airAndPollen_CategoryValue = airAndPollen_CategoryValue;
	}

	public double getMinimum_Value() {
		return minimum_Value;
	}

	public void setMinimum_Value(double minimum_Value) {
		this.minimum_Value = minimum_Value;
	}

	public double getMaximum_Value() {
		return maximum_Value;
	}

	public void setMaximum_Value(double maximum_Value) {
		this.maximum_Value = maximum_Value;
	}
	
	
	

}
