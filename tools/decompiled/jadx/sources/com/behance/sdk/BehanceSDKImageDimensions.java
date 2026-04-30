package com.behance.sdk;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKImageDimensions {
    private int height;
    private int width;

    public static BehanceSDKImageDimensions getInstance(int i, int i2) {
        BehanceSDKImageDimensions behanceSDKImageDimensions = new BehanceSDKImageDimensions();
        behanceSDKImageDimensions.setWidth(i);
        behanceSDKImageDimensions.setHeight(i2);
        return behanceSDKImageDimensions;
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
