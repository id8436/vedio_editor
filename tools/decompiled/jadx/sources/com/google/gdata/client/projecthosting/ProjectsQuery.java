package com.google.gdata.client.projecthosting;

import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class ProjectsQuery extends Query {
    private String label;
    private String orderby;

    public ProjectsQuery(URL url) {
        super(url);
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

    public String getOrderby() {
        return this.orderby;
    }

    public void setOrderby(String str) {
        if (this.orderby == null) {
            if (str == null) {
                return;
            }
        } else if (this.orderby.equals(str)) {
            return;
        }
        this.orderby = str;
        setStringCustomParameter("orderby", str);
    }
}
