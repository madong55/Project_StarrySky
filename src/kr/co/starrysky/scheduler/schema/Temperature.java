
package kr.co.starrysky.scheduler.schema;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("jsonschema2pojo")
public class Temperature {

    @SerializedName("Minimum")
    @Expose
    private Minimum minimum;
    @SerializedName("Maximum")
    @Expose
    private Maximum maximum;

    public Minimum getMinimum() {
        return minimum;
    }

    public void setMinimum(Minimum minimum) {
        this.minimum = minimum;
    }

    public Maximum getMaximum() {
        return maximum;
    }

    public void setMaximum(Maximum maximum) {
        this.maximum = maximum;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Temperature.class.getName()).append('@').append(Float.toHexString(System.identityHashCode(this))).append('[');
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
