
package kr.co.starrysky.scheduler.schema;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("jsonschema2pojo")
public class RealFeelTemperatureShade {

    @SerializedName("Minimum")
    @Expose
    private Minimum__2 minimum;
    @SerializedName("Maximum")
    @Expose
    private Maximum__2 maximum;

    public Minimum__2 getMinimum() {
        return minimum;
    }

    public void setMinimum(Minimum__2 minimum) {
        this.minimum = minimum;
    }

    public Maximum__2 getMaximum() {
        return maximum;
    }

    public void setMaximum(Maximum__2 maximum) {
        this.maximum = maximum;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(RealFeelTemperatureShade.class.getName()).append('@').append(Float.toHexString(System.identityHashCode(this))).append('[');
        sb.append("minimum");
        sb.append('=');
        sb.append(((this.minimum == null)?"<null>":this.minimum));
        sb.append(',');
        sb.append("maximum");
        sb.append('=');
        sb.append(((this.maximum == null)?"<null>":this.maximum));
        sb.append(',');
        if (sb.charAt((sb.length()- 1)) == ',') {
            sb.setCharAt((sb.length()- 1), ']');
        } else {
            sb.append(']');
        }
        return sb.toString();
    }

}
