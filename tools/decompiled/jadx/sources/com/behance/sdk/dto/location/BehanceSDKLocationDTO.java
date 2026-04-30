package com.behance.sdk.dto.location;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKLocationDTO implements Serializable {
    private static final long serialVersionUID = -2521060972117847947L;
    private String displayName;
    private String id;

    public String getDisplayName() {
        return this.displayName;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }
}
