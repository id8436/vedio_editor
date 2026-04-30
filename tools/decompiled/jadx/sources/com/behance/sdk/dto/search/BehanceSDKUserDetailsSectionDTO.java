package com.behance.sdk.dto.search;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKUserDetailsSectionDTO implements Serializable {
    private static final long serialVersionUID = -7480439910516741476L;
    private String description;
    private String title;

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }
}
