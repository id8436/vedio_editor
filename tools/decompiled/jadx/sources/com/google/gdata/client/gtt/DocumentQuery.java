package com.google.gdata.client.gtt;

import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class DocumentQuery extends Query {
    private Boolean onlydeleted;
    private String sharedWithEmailId;
    private Boolean showdeleted;

    public DocumentQuery(URL url) {
        super(url);
    }

    public Boolean getOnlydeleted() {
        return this.onlydeleted;
    }

    public void setOnlydeleted(Boolean bool) {
        if (this.onlydeleted == null) {
            if (bool == null) {
                return;
            }
        } else if (this.onlydeleted.equals(bool)) {
            return;
        }
        this.onlydeleted = bool;
        setStringCustomParameter("onlydeleted", bool == null ? null : bool.toString());
    }

    public String getSharedWithEmailId() {
        return this.sharedWithEmailId;
    }

    public void setSharedWithEmailId(String str) {
        if (this.sharedWithEmailId == null) {
            if (str == null) {
                return;
            }
        } else if (this.sharedWithEmailId.equals(str)) {
            return;
        }
        this.sharedWithEmailId = str;
        setStringCustomParameter("sharedwith", str);
    }

    public Boolean getShowdeleted() {
        return this.showdeleted;
    }

    public void setShowdeleted(Boolean bool) {
        if (this.showdeleted == null) {
            if (bool == null) {
                return;
            }
        } else if (this.showdeleted.equals(bool)) {
            return;
        }
        this.showdeleted = bool;
        setStringCustomParameter("showdeleted", bool == null ? null : bool.toString());
    }
}
