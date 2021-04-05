
package kr.co.starrysky.scheduler.schema;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("jsonschema2pojo")
public class Direction__3 {

    @SerializedName("Degrees")
    @Expose
    private Float degrees;
    @SerializedName("Localized")
    @Expose
    private String localized;
    @SerializedName("English")
    @Expose
    private String english;

    public Float getDegrees() {
        return degrees;
    }

    public void setDegrees(Float degrees) {
        this.degrees = degrees;
    }

    public String getLocalized() {
        return localized;
    }

    public void setLocalized(String localized) {
        this.localized = localized;
    }

    public String getEnglish() {
        return english;
    }

    public void setEnglish(String english) {
        this.english = english;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Direction__3 .class.getName()).append('@').append(Float.toHexString(System.identityHashCode(this))).append('[');
        sb.append("degrees");
        sb.append('=');
        sb.append(((this.degrees == null)?"<null>":this.degrees));
        sb.append(',');
        sb.append("localized");
        sb.append('=');
        sb.append(((this.localized == null)?"<null>":this.localized));
        sb.append(',');
        sb.append("english");
        sb.append('=');
        sb.append(((this.english == null)?"<null>":this.english));
        sb.append(',');
        if (sb.charAt((sb.length()- 1)) == ',') {
            sb.setCharAt((sb.length()- 1), ']');
        } else {
            sb.append(']');
        }
        return sb.toString();
    }

}
