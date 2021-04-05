
package kr.co.starrysky.scheduler.schema;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("jsonschema2pojo")
public class WindGust__1 {

    @SerializedName("Speed")
    @Expose
    private Speed__3 speed;
    @SerializedName("Direction")
    @Expose
    private Direction__3 direction;

    public Speed__3 getSpeed() {
        return speed;
    }

    public void setSpeed(Speed__3 speed) {
        this.speed = speed;
    }

    public Direction__3 getDirection() {
        return direction;
    }

    public void setDirection(Direction__3 direction) {
        this.direction = direction;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(WindGust__1 .class.getName()).append('@').append(Float.toHexString(System.identityHashCode(this))).append('[');
        sb.append("speed");
        sb.append('=');
        sb.append(((this.speed == null)?"<null>":this.speed));
        sb.append(',');
        sb.append("direction");
        sb.append('=');
        sb.append(((this.direction == null)?"<null>":this.direction));
        sb.append(',');
        if (sb.charAt((sb.length()- 1)) == ',') {
            sb.setCharAt((sb.length()- 1), ']');
        } else {
            sb.append(']');
        }
        return sb.toString();
    }

}
