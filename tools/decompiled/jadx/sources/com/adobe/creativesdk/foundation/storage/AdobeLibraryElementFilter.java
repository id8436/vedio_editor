package com.adobe.creativesdk.foundation.storage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeLibraryElementFilter {
    private String mCategory;
    private ArrayList<String> mContentTypes;
    private boolean mMatchAny = false;
    private String mName;
    private String mType;

    public boolean isMatchAny() {
        return this.mMatchAny;
    }

    public void setMatchAny(boolean z) {
        this.mMatchAny = z;
    }

    public String getName() {
        return this.mName;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public String getType() {
        return this.mType;
    }

    public void setType(String str) {
        this.mType = str;
    }

    public String getCategory() {
        return this.mCategory;
    }

    public void setCategory(String str) {
        this.mCategory = str;
    }

    public ArrayList<String> getContentTypes() {
        return this.mContentTypes;
    }

    public void setContentTypes(ArrayList arrayList) {
        this.mContentTypes = arrayList;
    }
}
