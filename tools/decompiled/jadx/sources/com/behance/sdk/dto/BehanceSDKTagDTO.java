package com.behance.sdk.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKTagDTO implements Serializable {
    private boolean approved;
    private String category;
    private int categoryId;
    private String categoryLabel;
    private long id;
    private String title;
    private String url;

    public long getId() {
        return this.id;
    }

    public void setId(long j) {
        this.id = j;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getCategory() {
        return this.category;
    }

    public void setCategory(String str) {
        this.category = str;
    }

    public String getCategoryLabel() {
        return this.categoryLabel;
    }

    public void setCategoryLabel(String str) {
        this.categoryLabel = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public boolean isApproved() {
        return this.approved;
    }

    public void setApproved(boolean z) {
        this.approved = z;
    }

    public int getCategoryId() {
        return this.categoryId;
    }

    public void setCategoryId(int i) {
        this.categoryId = i;
    }
}
