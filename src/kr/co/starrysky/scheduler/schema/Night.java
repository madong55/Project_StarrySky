
package kr.co.starrysky.scheduler.schema;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("jsonschema2pojo")
public class Night {

    @SerializedName("Icon")
    @Expose
    private Float icon;
    @SerializedName("IconPhrase")
    @Expose
    private String iconPhrase;
    @SerializedName("HasPrecipitation")
    @Expose
    private Boolean hasPrecipitation;
    @SerializedName("ShortPhrase")
    @Expose
    private String shortPhrase;
    @SerializedName("LongPhrase")
    @Expose
    private String longPhrase;
    @SerializedName("PrecipitationProbability")
    @Expose
    private Float precipitationProbability;
    @SerializedName("ThunderstormProbability")
    @Expose
    private Float thunderstormProbability;
    @SerializedName("RainProbability")
    @Expose
    private Float rainProbability;
    @SerializedName("SnowProbability")
    @Expose
    private Float snowProbability;
    @SerializedName("IceProbability")
    @Expose
    private Float iceProbability;
    @SerializedName("Wind")
    @Expose
    private Wind__1 wind;
    @SerializedName("WindGust")
    @Expose
    private WindGust__1 windGust;
    @SerializedName("TotalLiquid")
    @Expose
    private TotalLiquid__1 totalLiquid;
    @SerializedName("Rain")
    @Expose
    private Rain__1 rain;
    @SerializedName("Snow")
    @Expose
    private Snow__1 snow;
    @SerializedName("Ice")
    @Expose
    private Ice__1 ice;
    @SerializedName("HoursOfPrecipitation")
    @Expose
    private Float hoursOfPrecipitation;
    @SerializedName("HoursOfRain")
    @Expose
    private Float hoursOfRain;
    @SerializedName("HoursOfSnow")
    @Expose
    private Float hoursOfSnow;
    @SerializedName("HoursOfIce")
    @Expose
    private Float hoursOfIce;
    @SerializedName("CloudCover")
    @Expose
    private Float cloudCover;

    public Float getIcon() {
        return icon;
    }

    public void setIcon(Float icon) {
        this.icon = icon;
    }

    public String getIconPhrase() {
        return iconPhrase;
    }

    public void setIconPhrase(String iconPhrase) {
        this.iconPhrase = iconPhrase;
    }

    public Boolean getHasPrecipitation() {
        return hasPrecipitation;
    }

    public void setHasPrecipitation(Boolean hasPrecipitation) {
        this.hasPrecipitation = hasPrecipitation;
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

    public Float getPrecipitationProbability() {
        return precipitationProbability;
    }

    public void setPrecipitationProbability(Float precipitationProbability) {
        this.precipitationProbability = precipitationProbability;
    }

    public Float getThunderstormProbability() {
        return thunderstormProbability;
    }

    public void setThunderstormProbability(Float thunderstormProbability) {
        this.thunderstormProbability = thunderstormProbability;
    }

    public Float getRainProbability() {
        return rainProbability;
    }

    public void setRainProbability(Float rainProbability) {
        this.rainProbability = rainProbability;
    }

    public Float getSnowProbability() {
        return snowProbability;
    }

    public void setSnowProbability(Float snowProbability) {
        this.snowProbability = snowProbability;
    }

    public Float getIceProbability() {
        return iceProbability;
    }

    public void setIceProbability(Float iceProbability) {
        this.iceProbability = iceProbability;
    }

    public Wind__1 getWind() {
        return wind;
    }

    public void setWind(Wind__1 wind) {
        this.wind = wind;
    }

    public WindGust__1 getWindGust() {
        return windGust;
    }

    public void setWindGust(WindGust__1 windGust) {
        this.windGust = windGust;
    }

    public TotalLiquid__1 getTotalLiquid() {
        return totalLiquid;
    }

    public void setTotalLiquid(TotalLiquid__1 totalLiquid) {
        this.totalLiquid = totalLiquid;
    }

    public Rain__1 getRain() {
        return rain;
    }

    public void setRain(Rain__1 rain) {
        this.rain = rain;
    }

    public Snow__1 getSnow() {
        return snow;
    }

    public void setSnow(Snow__1 snow) {
        this.snow = snow;
    }

    public Ice__1 getIce() {
        return ice;
    }

    public void setIce(Ice__1 ice) {
        this.ice = ice;
    }

    public Float getHoursOfPrecipitation() {
        return hoursOfPrecipitation;
    }

    public void setHoursOfPrecipitation(Float hoursOfPrecipitation) {
        this.hoursOfPrecipitation = hoursOfPrecipitation;
    }

    public Float getHoursOfRain() {
        return hoursOfRain;
    }

    public void setHoursOfRain(Float hoursOfRain) {
        this.hoursOfRain = hoursOfRain;
    }

    public Float getHoursOfSnow() {
        return hoursOfSnow;
    }

    public void setHoursOfSnow(Float hoursOfSnow) {
        this.hoursOfSnow = hoursOfSnow;
    }

    public Float getHoursOfIce() {
        return hoursOfIce;
    }

    public void setHoursOfIce(Float hoursOfIce) {
        this.hoursOfIce = hoursOfIce;
    }

    public Float getCloudCover() {
        return cloudCover;
    }

    public void setCloudCover(Float cloudCover) {
        this.cloudCover = cloudCover;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Night.class.getName()).append('@').append(Float.toHexString(System.identityHashCode(this))).append('[');
        sb.append("icon");
        sb.append('=');
        sb.append(((this.icon == null)?"<null>":this.icon));
        sb.append(',');
        sb.append("iconPhrase");
        sb.append('=');
        sb.append(((this.iconPhrase == null)?"<null>":this.iconPhrase));
        sb.append(',');
        sb.append("hasPrecipitation");
        sb.append('=');
        sb.append(((this.hasPrecipitation == null)?"<null>":this.hasPrecipitation));
        sb.append(',');
        sb.append("shortPhrase");
        sb.append('=');
        sb.append(((this.shortPhrase == null)?"<null>":this.shortPhrase));
        sb.append(',');
        sb.append("longPhrase");
        sb.append('=');
        sb.append(((this.longPhrase == null)?"<null>":this.longPhrase));
        sb.append(',');
        sb.append("precipitationProbability");
        sb.append('=');
        sb.append(((this.precipitationProbability == null)?"<null>":this.precipitationProbability));
        sb.append(',');
        sb.append("thunderstormProbability");
        sb.append('=');
        sb.append(((this.thunderstormProbability == null)?"<null>":this.thunderstormProbability));
        sb.append(',');
        sb.append("rainProbability");
        sb.append('=');
        sb.append(((this.rainProbability == null)?"<null>":this.rainProbability));
        sb.append(',');
        sb.append("snowProbability");
        sb.append('=');
        sb.append(((this.snowProbability == null)?"<null>":this.snowProbability));
        sb.append(',');
        sb.append("iceProbability");
        sb.append('=');
        sb.append(((this.iceProbability == null)?"<null>":this.iceProbability));
        sb.append(',');
        sb.append("wind");
        sb.append('=');
        sb.append(((this.wind == null)?"<null>":this.wind));
        sb.append(',');
        sb.append("windGust");
        sb.append('=');
        sb.append(((this.windGust == null)?"<null>":this.windGust));
        sb.append(',');
        sb.append("totalLiquid");
        sb.append('=');
        sb.append(((this.totalLiquid == null)?"<null>":this.totalLiquid));
        sb.append(',');
        sb.append("rain");
        sb.append('=');
        sb.append(((this.rain == null)?"<null>":this.rain));
        sb.append(',');
        sb.append("snow");
        sb.append('=');
        sb.append(((this.snow == null)?"<null>":this.snow));
        sb.append(',');
        sb.append("ice");
        sb.append('=');
        sb.append(((this.ice == null)?"<null>":this.ice));
        sb.append(',');
        sb.append("hoursOfPrecipitation");
        sb.append('=');
        sb.append(((this.hoursOfPrecipitation == null)?"<null>":this.hoursOfPrecipitation));
        sb.append(',');
        sb.append("hoursOfRain");
        sb.append('=');
        sb.append(((this.hoursOfRain == null)?"<null>":this.hoursOfRain));
        sb.append(',');
        sb.append("hoursOfSnow");
        sb.append('=');
        sb.append(((this.hoursOfSnow == null)?"<null>":this.hoursOfSnow));
        sb.append(',');
        sb.append("hoursOfIce");
        sb.append('=');
        sb.append(((this.hoursOfIce == null)?"<null>":this.hoursOfIce));
        sb.append(',');
        sb.append("cloudCover");
        sb.append('=');
        sb.append(((this.cloudCover == null)?"<null>":this.cloudCover));
        sb.append(',');
        if (sb.charAt((sb.length()- 1)) == ',') {
            sb.setCharAt((sb.length()- 1), ']');
        } else {
            sb.append(']');
        }
        return sb.toString();
    }

}
