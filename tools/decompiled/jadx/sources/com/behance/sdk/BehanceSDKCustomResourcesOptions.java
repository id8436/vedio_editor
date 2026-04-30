package com.behance.sdk;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKCustomResourcesOptions {
    private int appSmallIcon = R.drawable.bsdk_icon_notification_publish_progress;
    private int appTitle = R.string.bsdk_publish_project_service_success_notification_title;
    private int phoneOrientation = -1;
    private int appColor = -16753409;

    public int getAppSmallIcon() {
        return this.appSmallIcon;
    }

    public void setAppSmallIcon(int i) {
        this.appSmallIcon = i;
    }

    public int getAppTitle() {
        return this.appTitle;
    }

    public void setAppTitle(int i) {
        this.appTitle = i;
    }

    public int getAppColor() {
        return this.appColor;
    }

    public void setAppColor(int i) {
        this.appColor = i;
    }

    public int getPhoneOrientation() {
        return this.phoneOrientation;
    }

    public void setPhoneOrientation(int i) {
        this.phoneOrientation = i;
    }
}
