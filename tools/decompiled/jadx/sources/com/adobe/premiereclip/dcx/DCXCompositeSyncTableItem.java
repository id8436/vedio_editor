package com.adobe.premiereclip.dcx;

import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class DCXCompositeSyncTableItem {
    private static final String ccAssetDownloadKey = "ccAssetDownload";
    private static final String kPullRequestKey = "pullRequest";
    private static final String kPushRequestKey = "pushRequest";
    private String ccAssetDownloadText;
    private String compositeId;
    private String downloadStatusText;
    private String projectName;
    private String projectPosterPath;
    private HashMap<String, AdobeNetworkHttpTaskHandle> requests = new HashMap<>();
    private String syncedStatusText;
    private String uploadStatusText;

    public DCXCompositeSyncTableItem(String str) {
        this.compositeId = str;
    }

    public void setProjectPosterPath(String str) {
        this.projectPosterPath = str;
    }

    public void setUploadStatusText(String str) {
        this.uploadStatusText = str;
    }

    public void setDownloadStatusText(String str) {
        this.downloadStatusText = str;
    }

    public void setSyncedStatusText(String str) {
        this.syncedStatusText = str;
    }

    public String getProjectName() {
        return this.projectName;
    }

    public String getProjectPosterPath() {
        return this.projectPosterPath;
    }

    public String getUploadStatusText() {
        return this.uploadStatusText;
    }

    public String getDownloadStatusText() {
        return this.downloadStatusText;
    }

    public String getSyncedStatusText() {
        return this.syncedStatusText;
    }

    public void setProjectName(String str) {
        this.projectName = str;
    }

    public String getCompositeId() {
        return this.compositeId;
    }

    public void addRequest(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        if (str.equals(kPullRequestKey)) {
            this.requests.put(kPullRequestKey, adobeNetworkHttpTaskHandle);
        } else {
            this.requests.put(kPushRequestKey, adobeNetworkHttpTaskHandle);
        }
    }

    public void removeRequest(String str) {
        if (str.equals(kPullRequestKey)) {
            this.requests.remove(kPullRequestKey);
        } else {
            this.requests.remove(kPushRequestKey);
        }
    }

    public AdobeNetworkHttpTaskHandle getPullRequest() {
        return this.requests.get(kPullRequestKey);
    }

    public AdobeNetworkHttpTaskHandle getPushRequest() {
        return this.requests.get(kPushRequestKey);
    }

    public String getCcAssetDownloadText() {
        return this.ccAssetDownloadText;
    }

    public void setCcAssetDownloadText(String str) {
        this.ccAssetDownloadText = str;
    }
}
