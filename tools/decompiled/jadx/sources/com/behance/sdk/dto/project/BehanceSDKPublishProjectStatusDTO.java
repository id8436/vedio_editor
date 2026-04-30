package com.behance.sdk.dto.project;

import com.behance.sdk.enums.BehanceSDKPublishProjectProgressState;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKPublishProjectStatusDTO implements Serializable {
    public static final String INTENT_ACTION_PROJECT_PUBLISH_STATUS_BROADCAST = "com.behance.sdk.INTENT_ACTION_PROJECT_PUBLISH_STATUS_BROADCAST";
    public static final String INTENT_EXTRA_OBJ_KEY_PROJECT_PUBLISH_STATUS_BROADCAST_DATA = "com.behance.sdk.INTENT_EXTRA_OBJ_KEY_PROJECT_PUBLISH_STATUS_BROADCAST_DATA";
    private static final long serialVersionUID = 8406969591550157485L;
    private Throwable exception;
    private int progressPercentage;
    private BehanceSDKPublishProjectProgressState progressState;
    private String projectCoverImageUrl;
    private String projectId;
    private String projectTitle;
    private String projectUrl;
    private String publishRequestId;
    private String reasonPhrase;

    public String getProjectId() {
        return this.projectId;
    }

    public void setProjectId(String str) {
        this.projectId = str;
    }

    public String getProjectTitle() {
        return this.projectTitle;
    }

    public void setProjectTitle(String str) {
        this.projectTitle = str;
    }

    public String getProjectUrl() {
        return this.projectUrl;
    }

    public void setProjectUrl(String str) {
        this.projectUrl = str;
    }

    public BehanceSDKPublishProjectProgressState getProgressState() {
        return this.progressState;
    }

    public void setProgressState(BehanceSDKPublishProjectProgressState behanceSDKPublishProjectProgressState) {
        this.progressState = behanceSDKPublishProjectProgressState;
    }

    public void setReasonPhrase(String str) {
        this.reasonPhrase = str;
    }

    public String getReasonPhrase() {
        return this.reasonPhrase;
    }

    public Throwable getException() {
        return this.exception;
    }

    public void setException(Throwable th) {
        this.exception = th;
    }

    public String getPublishRequestId() {
        return this.publishRequestId;
    }

    public void setPublishRequestId(String str) {
        this.publishRequestId = str;
    }

    public int getProgressPercentage() {
        return this.progressPercentage;
    }

    public void setProgressPercentage(int i) {
        this.progressPercentage = i;
    }

    public String getProjectCoverImageUrl() {
        return this.projectCoverImageUrl;
    }

    public void setProjectCoverImageUrl(String str) {
        this.projectCoverImageUrl = str;
    }
}
