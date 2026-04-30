package com.google.gdata.client.sites;

import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class ActivityQuery extends Query {
    private String kind;

    public ActivityQuery(URL url) {
        super(url);
    }

    public String getKind() {
        return this.kind;
    }

    public void setKind(String str) {
        if (this.kind == null) {
            if (str == null) {
                return;
            }
        } else if (this.kind.equals(str)) {
            return;
        }
        this.kind = str;
        setStringCustomParameter("kind", str);
    }
}
