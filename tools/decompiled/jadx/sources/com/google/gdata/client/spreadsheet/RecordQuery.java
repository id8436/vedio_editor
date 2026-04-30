package com.google.gdata.client.spreadsheet;

import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class RecordQuery extends Query {
    private String orderBy;
    private Boolean reverse;
    private String spreadsheetQuery;

    public RecordQuery(URL url) {
        super(url);
        this.reverse = false;
    }

    public String getOrderBy() {
        return this.orderBy;
    }

    public void setOrderBy(String str) {
        if (this.orderBy == null) {
            if (str == null) {
                return;
            }
        } else if (this.orderBy.equals(str)) {
            return;
        }
        this.orderBy = str;
        setStringCustomParameter("orderby", str);
    }

    public Boolean getReverse() {
        return this.reverse;
    }

    public void setReverse(Boolean bool) {
        if (bool == null) {
            bool = false;
        }
        if (!this.reverse.equals(bool)) {
            this.reverse = bool;
            setStringCustomParameter(ListQuery.REVERSE, !bool.booleanValue() ? null : bool.toString());
        }
    }

    public String getSpreadsheetQuery() {
        return this.spreadsheetQuery;
    }

    public void setSpreadsheetQuery(String str) {
        if (this.spreadsheetQuery == null) {
            if (str == null) {
                return;
            }
        } else if (this.spreadsheetQuery.equals(str)) {
            return;
        }
        this.spreadsheetQuery = str;
        setStringCustomParameter(ListQuery.SPREADSHEET_QUERY, str);
    }
}
