package com.google.gdata.client;

import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class DocumentQuery extends Query {
    public static final String DEFAULT_SORT_MODE = "last-modified";
    public static final String LAST_MODIFIED_SORT = "last-modified";
    public static final String LAST_VIEWED_SORT = "last-viewed";
    public static final String ORDERBY = "orderby";
    public static final String STARRED_SORT = "starred";
    public static final String TITLE = "title";
    public static final String TITLE_EXACT = "title-exact";
    public static final String TITLE_SORT = "title";

    public DocumentQuery(URL url) {
        super(url);
    }

    public void setTitleQuery(String str) {
        setStringCustomParameter("title", str);
    }

    public String getTitleQuery() {
        return getStringCustomParameter("title");
    }

    public void setTitleExact(boolean z) {
        setStringCustomParameter(TITLE_EXACT, z ? "true" : null);
    }

    public boolean isTitleExact() {
        return getStringCustomParameter(TITLE_EXACT) != null;
    }

    public void setSortMode(String str) {
        setStringCustomParameter("orderby", str);
    }

    public String getSortMode() {
        return getStringCustomParameter("orderby");
    }
}
