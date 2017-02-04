package jp.co.sacn.model;

import java.io.Serializable;

import org.slim3.datastore.Attribute;
import org.slim3.datastore.Model;

import com.google.appengine.api.datastore.Key;

@Model(schemaVersion = 1)
public class WorkReport implements Serializable {

    private static final long serialVersionUID = 1L;

    @Attribute(primaryKey = true)
    private Key key;

    @Attribute(version = true)
    private Long version;

    // ユーザーID
    private String userid;

    // 年月
    private String ym;

    // 日
    private String date;

    // 出社時間
    private String arrivalTime;

    // 退社時間
    private String quittingTime;

    // 休暇等
    private String type;

    // シフトA
    private boolean shiftA;

    // シフトB
    private boolean shiftB;

    // 行先常駐先
    private String memo;

    /**
     * Returns the key.
     *
     * @return the key
     */
    public Key getKey() {
        return key;
    }

    /**
     * Sets the key.
     *
     * @param key
     *            the key
     */
    public void setKey(Key key) {
        this.key = key;
    }

    /**
     * Returns the version.
     *
     * @return the version
     */
    public Long getVersion() {
        return version;
    }

    /**
     * Sets the version.
     *
     * @param version
     *            the version
     */
    public void setVersion(Long version) {
        this.version = version;
    }

    /**
	 * @return userid
	 */
	public String getUserid() {
		return userid;
	}

	/**
	 * @param userid セットする userid
	 */
	public void setUserid(String userid) {
		this.userid = userid;
	}

	/**
	 * @return ym
	 */
	public String getYm() {
		return ym;
	}

	/**
	 * @param ym セットする ym
	 */
	public void setYm(String ym) {
		this.ym = ym;
	}

	/**
	 * @return date
	 */
	public String getDate() {
		return date;
	}

	/**
	 * @param date セットする date
	 */
	public void setDate(String date) {
		this.date = date;
	}

	/**
	 * @return arrivalTime
	 */
	public String getArrivalTime() {
		return arrivalTime;
	}

	/**
	 * @param arrivalTime セットする arrivalTime
	 */
	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}

	/**
	 * @return quittingTime
	 */
	public String getQuittingTime() {
		return quittingTime;
	}

	/**
	 * @param quittingTime セットする quittingTime
	 */
	public void setQuittingTime(String quittingTime) {
		this.quittingTime = quittingTime;
	}

	/**
	 * @return type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type セットする type
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * @return shiftA
	 */
	public boolean isShiftA() {
		return shiftA;
	}

	/**
	 * @param shiftA セットする shiftA
	 */
	public void setShiftA(boolean shiftA) {
		this.shiftA = shiftA;
	}

	/**
	 * @return shiftB
	 */
	public boolean isShiftB() {
		return shiftB;
	}

	/**
	 * @param shiftB セットする shiftB
	 */
	public void setShiftB(boolean shiftB) {
		this.shiftB = shiftB;
	}

	/**
	 * @return memo
	 */
	public String getMemo() {
		return memo;
	}

	/**
	 * @param memo セットする memo
	 */
	public void setMemo(String memo) {
		this.memo = memo;
	}

	@Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((key == null) ? 0 : key.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        WorkReport other = (WorkReport) obj;
        if (key == null) {
            if (other.key != null) {
                return false;
            }
        } else if (!key.equals(other.key)) {
            return false;
        }
        return true;
    }
}
