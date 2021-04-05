
package kr.co.starrysky.scheduler.schema;

import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("jsonschema2pojo")
public class DailyForecast {

    @SerializedName("Date")
    @Expose
    private String date;
    @SerializedName("EpochDate")
    @Expose
    private Float epochDate;
    @SerializedName("Sun")
    @Expose
    private Sun sun;
    @SerializedName("Moon")
    @Expose
    private Moon moon;
    @SerializedName("Temperature")
    @Expose
    private Temperature temperature;
    @SerializedName("RealFeelTemperature")
    @Expose
    private RealFeelTemperature realFeelTemperature;
    @SerializedName("RealFeelTemperatureShade")
    @Expose
    private RealFeelTemperatureShade realFeelTemperatureShade;
    @SerializedName("HoursOfSun")
    @Expose
    private Double hoursOfSun;
    @SerializedName("DegreeDaySummary")
    @Expose
    private DegreeDaySummary degreeDaySummary;
    @SerializedName("AirAndPollen")
    @Expose
    private List<AirAndPollen> airAndPollen = null;
    @SerializedName("Day")
    @Expose
    private Day day;
    @SerializedName("Night")
    @Expose
    private Night night;
    @SerializedName("Sources")
    @Expose
    private List<String> sources = null;
    @SerializedName("MobileLink")
    @Expose
    private String mobileLink;
    @SerializedName("Link")
    @Expose
    private String link;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Float getEpochDate() {
        return epochDate;
    }

    public void setEpochDate(Float epochDate) {
        this.epochDate = epochDate;
    }

    public Sun getSun() {
        return sun;
    }

    public void setSun(Sun sun) {
        this.sun = sun;
    }

    public Moon getMoon() {
        return moon;
    }

    public void setMoon(Moon moon) {
        this.moon = moon;
    }

    public Temperature getTemperature() {
        return temperature;
    }

    public void setTemperature(Temperature temperature) {
        this.temperature = temperature;
    }

    public RealFeelTemperature getRealFeelTemperature() {
        return realFeelTemperature;
    }

    public void setRealFeelTemperature(RealFeelTemperature realFeelTemperature) {
        this.realFeelTemperature = realFeelTemperature;
    }

    public RealFeelTemperatureShade getRealFeelTemperatureShade() {
        return realFeelTemperatureShade;
    }

    public void setRealFeelTemperatureShade(RealFeelTemperatureShade realFeelTemperatureShade) {
        this.realFeelTemperatureShade = realFeelTemperatureShade;
    }

    public Double getHoursOfSun() {
        return hoursOfSun;
    }

    public void setHoursOfSun(Double hoursOfSun) {
        this.hoursOfSun = hoursOfSun;
    }

    public DegreeDaySummary getDegreeDaySummary() {
        return degreeDaySummary;
    }

    public void setDegreeDaySummary(DegreeDaySummary degreeDaySummary) {
        this.degreeDaySummary = degreeDaySummary;
    }

    public List<AirAndPollen> getAirAndPollen() {
        return airAndPollen;
    }

    public void setAirAndPollen(List<AirAndPollen> airAndPollen) {
        this.airAndPollen = airAndPollen;
    }

    public Day getDay() {
        return day;
    }

    public void setDay(Day day) {
        this.day = day;
    }

    public Night getNight() {
        return night;
    }

    public void setNight(Night night) {
        this.night = night;
    }

    public List<String> getSources() {
        return sources;
    }

    public void setSources(List<String> sources) {
        this.sources = sources;
    }

    public String getMobileLink() {
        return mobileLink;
    }

    public void setMobileLink(String mobileLink) {
        this.mobileLink = mobileLink;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(DailyForecast.class.getName()).append('@').append(Float.toHexString(System.identityHashCode(this))).append('[');
        sb.append("date");
        sb.append('=');
        sb.append(((this.date == null)?"<null>":this.date));
        sb.append(',');
        sb.append("epochDate");
        sb.append('=');
        sb.append(((this.epochDate == null)?"<null>":this.epochDate));
        sb.append(',');
        sb.append("sun");
        sb.append('=');
        sb.append(((this.sun == null)?"<null>":this.sun));
        sb.append(',');
        sb.append("moon");
        sb.append('=');
        sb.append(((this.moon == null)?"<null>":this.moon));
        sb.append(',');
        sb.append("temperature");
        sb.append('=');
        sb.append(((this.temperature == null)?"<null>":this.temperature));
        sb.append(',');
        sb.append("realFeelTemperature");
        sb.append('=');
        sb.append(((this.realFeelTemperature == null)?"<null>":this.realFeelTemperature));
        sb.append(',');
        sb.append("realFeelTemperatureShade");
        sb.append('=');
        sb.append(((this.realFeelTemperatureShade == null)?"<null>":this.realFeelTemperatureShade));
        sb.append(',');
        sb.append("hoursOfSun");
        sb.append('=');
        sb.append(((this.hoursOfSun == null)?"<null>":this.hoursOfSun));
        sb.append(',');
        sb.append("degreeDaySummary");
        sb.append('=');
        sb.append(((this.degreeDaySummary == null)?"<null>":this.degreeDaySummary));
        sb.append(',');
        sb.append("airAndPollen");
        sb.append('=');
        sb.append(((this.airAndPollen == null)?"<null>":this.airAndPollen));
        sb.append(',');
        sb.append("day");
        sb.append('=');
        sb.append(((this.day == null)?"<null>":this.day));
        sb.append(',');
        sb.append("night");
        sb.append('=');
        sb.append(((this.night == null)?"<null>":this.night));
        sb.append(',');
        sb.append("sources");
        sb.append('=');
        sb.append(((this.sources == null)?"<null>":this.sources));
        sb.append(',');
        sb.append("mobileLink");
        sb.append('=');
        sb.append(((this.mobileLink == null)?"<null>":this.mobileLink));
        sb.append(',');
        sb.append("link");
        sb.append('=');
        sb.append(((this.link == null)?"<null>":this.link));
        sb.append(',');
        if (sb.charAt((sb.length()- 1)) == ',') {
            sb.setCharAt((sb.length()- 1), ']');
        } else {
            sb.append(']');
        }
        return sb.toString();
    }

}
