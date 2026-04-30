package com.behance.sdk.asynctask.params;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKSearchTagsAsyncTaskParams extends BehanceSDKAbstractTaskParams {
    private String categories;
    private String textQuery;

    public String getCategories() {
        return this.categories;
    }

    public void setCategories(String str) {
        this.categories = str;
    }

    public String getTextQuery() {
        return this.textQuery;
    }

    public void setTextQuery(String str) {
        this.textQuery = str;
    }
}
