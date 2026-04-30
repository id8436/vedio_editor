package com.behance.sdk.asynctask.params;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetProjectDetailsAsyncTaskParams extends BehanceSDKAbstractTaskParams {
    private String followHTMLButtonText;
    private String followingHTMLButtonText;
    private boolean isDownloadHD;
    private boolean isLargeTablet;
    private String projectID;

    public String getProjectID() {
        return this.projectID;
    }

    public void setProjectID(String str) {
        this.projectID = str;
    }

    public boolean isDownloadHD() {
        return this.isDownloadHD;
    }

    public void setDownloadHD(boolean z) {
        this.isDownloadHD = z;
    }

    public String getFollowingHTMLButtonText() {
        return this.followingHTMLButtonText;
    }

    public void setFollowingHTMLButtonText(String str) {
        this.followingHTMLButtonText = str;
    }

    public String getFollowHTMLButtonText() {
        return this.followHTMLButtonText;
    }

    public void setFollowHTMLButtonText(String str) {
        this.followHTMLButtonText = str;
    }

    public boolean isLargeTablet() {
        return this.isLargeTablet;
    }

    public void setLargeTablet(boolean z) {
        this.isLargeTablet = z;
    }
}
