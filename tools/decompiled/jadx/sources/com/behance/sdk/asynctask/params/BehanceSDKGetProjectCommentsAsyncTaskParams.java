package com.behance.sdk.asynctask.params;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetProjectCommentsAsyncTaskParams extends BehanceSDKAbstractTaskParams {
    public static final int PROJECT_COMMENTS_PAGE_SIZE = 50;
    private int pageNumber;
    private int pageSize;
    private String projectId;

    public String getProjectId() {
        return this.projectId;
    }

    public void setProjectId(String str) {
        this.projectId = str;
    }

    public int getPageNumber() {
        return this.pageNumber;
    }

    public void setPageNumber(int i) {
        this.pageNumber = i;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public void setPageSize(int i) {
        this.pageSize = i;
    }
}
