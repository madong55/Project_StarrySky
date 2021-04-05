
package kr.co.starrysky.scheduler.schema;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("jsonschema2pojo")
public class WindGust {

    @SerializedName("Speed")
    @Expose
    private Speed__1 speed;
    @SerializedName("Direction")
    @Expose
    private Direction__1 direction;

    public Speed__1 getSpeed() {
        return speed;
    }

    public void setSpeed(Speed__1 speed) {
        this.speed = speed;
    }

    public Direction__1 getDirection() {
        return direction;
    }

    public void setDirection(Direction__1 direction) {
        this.direction = direction;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(WindGust.class.getName()).append('@').append(Float.toHexString(System.identityHashCode(this))).append('[');
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
