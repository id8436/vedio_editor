package com.google.gdata.client.projecthosting;

import android.support.v4.app.NotificationCompat;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class IssuesQuery extends Query {
    private String can;
    private Integer id;
    private String label;
    private String owner;
    private String status;

    public IssuesQuery(URL url) {
        super(url);
    }

    public String getCan() {
        return this.can;
    }

    public void setCan(String str) {
        if (this.can == null) {
            if (str == null) {
                return;
            }
        } else if (this.can.equals(str)) {
            return;
        }
        this.can = str;
        setStringCustomParameter("can", str);
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer num) {
        if (this.id == null) {
            if (num == null) {
                return;
            }
        } else if (this.id.equals(num)) {
            return;
        }
        this.id = num;
        setStringCustomParameter("id", num == null ? null : num.toString());
    }

    public String getLabel() {
        return this.label;
    }

    public void setLabel(String str) {
        if (this.label == null) {
            if (str == null) {
                return;
            }
        } else if (this.label.equals(str)) {
            return;
        }
        this.label = str;
        setStringCustomParameter("label", str);
    }

    public String getOwner() {
        return this.owner;
    }

    public void setOwner(String str) {
        if (this.owner == null) {
            if (str == null) {
                return;
            }
        } else if (this.owner.equals(str)) {
            return;
        }
        this.owner = str;
        setStringCustomParameter(DCXProjectKeys.kDCXKey_Project_owner, str);
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        if (this.status == null) {
            if (str == null) {
                return;
            }
        } else if (this.status.equals(str)) {
            return;
        }
        this.status = str;
        setStringCustomParameter(NotificationCompat.CATEGORY_STATUS, str);
    }
}
