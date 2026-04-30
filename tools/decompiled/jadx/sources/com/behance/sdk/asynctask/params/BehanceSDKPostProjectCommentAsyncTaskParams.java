package com.behance.sdk.asynctask.params;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKPostProjectCommentAsyncTaskParams extends BehanceSDKAbstractTaskParams {
    private String commentContent;
    private String projectId;

    public String getCommentContent() {
        return this.commentContent;
    }

    public void setCommentContent(String str) {
        this.commentContent = str;
    }

    public String getProjectId() {
        return this.projectId;
    }

    public void setProjectId(String str) {
        this.projectId = str;
    }
}
