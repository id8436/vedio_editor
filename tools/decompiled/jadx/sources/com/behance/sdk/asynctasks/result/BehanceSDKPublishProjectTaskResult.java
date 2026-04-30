package com.behance.sdk.asynctasks.result;

import com.behance.sdk.dto.BehanceSDKPublishedProjectDTO;
import com.behance.sdk.project.modules.ProjectModule;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKPublishProjectTaskResult {
    private Throwable exception;
    private ProjectModule failedProjectModule;
    private BehanceSDKPublishedProjectDTO publishedProject;
    private String reasonPhrase;
    private PublishStatus status;

    public enum PublishStatus {
        SUCCESS,
        PUBLISH_FAILED,
        CREATION_FAILED,
        MODULE_ADD_FAILED,
        EXCEPTION,
        CANCELLED
    }

    public PublishStatus getStatus() {
        return this.status;
    }

    public void setStatus(PublishStatus publishStatus) {
        this.status = publishStatus;
    }

    public Throwable getException() {
        return this.exception;
    }

    public void setException(Throwable th) {
        this.exception = th;
    }

    public void setFailedMoudle(ProjectModule projectModule) {
        this.failedProjectModule = projectModule;
    }

    public ProjectModule getFailedMoudle() {
        return this.failedProjectModule;
    }

    public void setReasonPhrase(String str) {
        this.reasonPhrase = str;
    }

    public String getReasonPhrase() {
        return this.reasonPhrase;
    }

    public BehanceSDKPublishedProjectDTO getPublishedProject() {
        return this.publishedProject;
    }

    public void setPublishedProject(BehanceSDKPublishedProjectDTO behanceSDKPublishedProjectDTO) {
        this.publishedProject = behanceSDKPublishedProjectDTO;
    }
}
