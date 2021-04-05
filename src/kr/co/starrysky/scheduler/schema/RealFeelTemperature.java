
package kr.co.starrysky.scheduler.schema;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("jsonschema2pojo")
public class RealFeelTemperature {

    @SerializedName("Minimum")
    @Expose
    private Minimum__1 minimum;
    @SerializedName("Maximum")
    @Expose
    private Maximum__1 maximum;

    public Minimum__1 getMinimum() {
        return minimum;
    }

    public void setMinimum(Minimum__1 minimum) {
        this.minimum = minimum;
    }

    public Maximum__1 getMaximum() {
        return maximum;
    }

    public void setMaximum(Maximum__1 maximum) {
        this.maximum = maximum;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(RealFeelTemperature.class.getName()).append('@').append(Float.toHexString(System.identityHashCode(this))).append('[');
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
