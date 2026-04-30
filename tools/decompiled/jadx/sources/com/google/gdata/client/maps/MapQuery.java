package com.google.gdata.client.maps;

import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class MapQuery extends Query {
    private String prevId;
    private Boolean showDeleted;

    public MapQuery(URL url) {
        super(url);
    }

    public String getPrevId() {
        return this.prevId;
    }

    public void setPrevId(String str) {
        if (this.prevId == null) {
            if (str == null) {
                return;
            }
        } else if (this.prevId.equals(str)) {
            return;
        }
        this.prevId = str;
        setStringCustomParameter("previd", str);
    }

    public Boolean getShowDeleted() {
        return this.showDeleted;
    }

    public void setShowDeleted(Boolean bool) {
        if (this.showDeleted == null) {
            if (bool == null) {
                return;
            }
        } else if (this.showDeleted.equals(bool)) {
            return;
        }
        this.showDeleted = bool;
        setStringCustomParameter("showdeleted", bool == null ? null : bool.toString());
    }
}
