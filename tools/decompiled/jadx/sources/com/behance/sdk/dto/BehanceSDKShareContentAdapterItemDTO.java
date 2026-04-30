package com.behance.sdk.dto;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKShareContentAdapterItemDTO {
    private Drawable displayIcon;
    private String displayLabel;
    private String packageName;
    public static String TUMBLR_SHARING_PACKAGE_NAME = "TUMBLR_SHARING_PACKAGE_NAME";
    public static String EMAIL_SHARING_PACKAGE_NAME = "EMAIL_SHARING_PACKAGE_NAME";
    public static String COPY_LINK_SHARING_PACKAGE_NAME = "COPY_LINK_SHARING_PACKAGE_NAME";
    public static String DOWNLOAD_IMAGE_KEY = "DOWNLOAD_IMAGE_KEY";

    public Drawable getDisplayIcon() {
        return this.displayIcon;
    }

    public void setDisplayIcon(Drawable drawable) {
        this.displayIcon = drawable;
    }

    public String getDisplayLabel() {
        return this.displayLabel;
    }

    public void setDisplayLabel(String str) {
        this.displayLabel = str;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }
}
