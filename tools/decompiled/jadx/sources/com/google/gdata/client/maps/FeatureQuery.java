package com.google.gdata.client.maps;

import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class FeatureQuery extends Query {
    private Boolean showDeleted;

    public FeatureQuery(URL url) {
        super(url);
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
