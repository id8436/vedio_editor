package com.behance.sdk.dto.search;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKImageDTO implements Serializable {
    private static final long serialVersionUID = -4128494458878297783L;
    private int height;
    private String url;
    private int width;

    public BehanceSDKImageDTO() {
    }

    public BehanceSDKImageDTO(String str) {
        this.url = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public static BehanceSDKImageDTO getNewInstance(String str) {
        return new BehanceSDKImageDTO(str);
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }
}
