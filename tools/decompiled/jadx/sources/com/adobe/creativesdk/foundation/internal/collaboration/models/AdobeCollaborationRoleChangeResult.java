package com.adobe.creativesdk.foundation.internal.collaboration.models;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCollaborationRoleChangeResult {
    private int statusCode;
    private String statusText;
    private String userId;

    public String getStatusText() {
        return this.statusText;
    }

    public void setStatusText(String str) {
        this.statusText = str;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public void setStatusCode(int i) {
        this.statusCode = i;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }
}
