package com.google.gdata.client.spreadsheet;

import com.google.gdata.client.DocumentQuery;
import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class TableQuery extends Query {
    private Boolean titleExact;
    private String titleQuery;

    public TableQuery(URL url) {
        super(url);
    }

    public String getTitleQuery() {
        return this.titleQuery;
    }

    public void setTitleQuery(String str) {
        if (this.titleQuery == null) {
            if (str == null) {
                return;
            }
        } else if (this.titleQuery.equals(str)) {
            return;
        }
        this.titleQuery = str;
        setStringCustomParameter("title", str);
    }

    public Boolean getTitleExact() {
        return this.titleExact;
    }

    public void setTitleExact(Boolean bool) {
        if (this.titleExact == null) {
            if (bool == null) {
                return;
            }
        } else if (this.titleExact.equals(bool)) {
            return;
        }
        this.titleExact = bool;
        setStringCustomParameter(DocumentQuery.TITLE_EXACT, bool == null ? null : bool.toString());
    }
}
