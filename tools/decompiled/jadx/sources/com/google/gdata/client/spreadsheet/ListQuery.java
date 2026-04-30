package com.google.gdata.client.spreadsheet;

import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class ListQuery extends Query {
    public static final String ORDERBY = "orderby";
    public static final String ORDERBY_COLUMN = "column";
    public static final String ORDERBY_POSITION = "position";
    public static final String REVERSE = "reverse";
    public static final String SPREADSHEET_QUERY = "sq";

    public ListQuery(URL url) {
        super(url);
    }

    public void setSpreadsheetQuery(String str) {
        setStringCustomParameter(SPREADSHEET_QUERY, str);
    }

    public String getSpreadsheetQuery() {
        return getStringCustomParameter(SPREADSHEET_QUERY);
    }

    @Override // com.google.gdata.client.Query
    public void setFullTextQuery(String str) {
        super.setFullTextQuery(str);
    }

    public void setSortColumn(String str) {
        if (str == null || str.split("\\s").length > 1) {
            setOrderBy(null);
        } else {
            setOrderBy("column:" + str);
        }
    }

    public void setOrderBy(String str) {
        if (str == null || str.equals(ORDERBY_POSITION) || (str.startsWith(ORDERBY_COLUMN) && str.split("\\s").length == 1)) {
            setStringCustomParameter("orderby", str);
        }
    }

    public String getOrderBy() {
        return getStringCustomParameter("orderby");
    }

    public void setReverse(boolean z) {
        setStringCustomParameter(REVERSE, z ? "true" : null);
    }

    public boolean isReverse() {
        return getStringCustomParameter(REVERSE) != null;
    }
}
