package com.behance.sdk.dto.search;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKWebLinkDTO implements Serializable {
    private static final long serialVersionUID = -7059543451360851235L;
    private String title;
    private String url;

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
