package com.behance.sdk.asynctask.params;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKDeleteProjectCommentAsyncTaskParams extends BehanceSDKAbstractTaskParams {
    private String commentId;
    private String projectId;

    public String getProjectId() {
        return this.projectId;
    }

    public void setProjectId(String str) {
        this.projectId = str;
    }

    public String getCommentId() {
        return this.commentId;
    }

    public void setCommentId(String str) {
        this.commentId = str;
    }
}
