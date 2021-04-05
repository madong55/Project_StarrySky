
package kr.co.starrysky.scheduler.schema;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("jsonschema2pojo")
public class Moon {

    @SerializedName("Rise")
    @Expose
    private String rise;
    @SerializedName("EpochRise")
    @Expose
    private Float epochRise;
    @SerializedName("Set")
    @Expose
    private String set;
    @SerializedName("EpochSet")
    @Expose
    private Float epochSet;
    @SerializedName("Phase")
    @Expose
    private String phase;
    @SerializedName("Age")
    @Expose
    private Float age;

    public String getRise() {
        return rise;
    }

    public void setRise(String rise) {
        this.rise = rise;
    }

    public Float getEpochRise() {
        return epochRise;
    }

    public void setEpochRise(Float epochRise) {
        this.epochRise = epochRise;
    }

    public String getSet() {
        return set;
    }

    public void setSet(String set) {
        this.set = set;
    }

    public Float getEpochSet() {
        return epochSet;
    }

    public void setEpochSet(Float epochSet) {
        this.epochSet = epochSet;
    }

    public String getPhase() {
        return phase;
    }

    public void setPhase(String phase) {
        this.phase = phase;
    }

    public Float getAge() {
        return age;
    }

    public void setAge(Float age) {
        this.age = age;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Moon.class.getName()).append('@').append(Float.toHexString(System.identityHashCode(this))).append('[');
        sb.append("rise");
        sb.append('=');
        sb.append(((this.rise == null)?"<null>":this.rise));
        sb.append(',');
        sb.append("epochRise");
        sb.append('=');
        sb.append(((this.epochRise == null)?"<null>":this.epochRise));
        sb.append(',');
        sb.append("set");
        sb.append('=');
        sb.append(((this.set == null)?"<null>":this.set));
        sb.append(',');
        sb.append("epochSet");
        sb.append('=');
        sb.append(((this.epochSet == null)?"<null>":this.epochSet));
        sb.append(',');
        sb.append("phase");
        sb.append('=');
        sb.append(((this.phase == null)?"<null>":this.phase));
        sb.append(',');
        sb.append("age");
        sb.append('=');
        sb.append(((this.age == null)?"<null>":this.age));
        sb.append(',');
        if (sb.charAt((sb.length()- 1)) == ',') {
            sb.setCharAt((sb.length()- 1), ']');
        } else {
            sb.append(']');
        }
        return sb.toString();
    }

}
