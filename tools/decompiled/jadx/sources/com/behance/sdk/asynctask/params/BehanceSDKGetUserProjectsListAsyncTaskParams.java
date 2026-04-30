package com.behance.sdk.asynctask.params;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetUserProjectsListAsyncTaskParams extends BehanceSDKAbstractTaskParams {
    public static final int DEFAULT_REQUEST_PAGE_SIZE = 24;
    private boolean includePrivateProjects = true;
    private int pageNumber;
    private int userId;

    public int getUserId() {
        return this.userId;
    }

    public void setUserId(int i) {
        this.userId = i;
    }

    public boolean isIncludePrivateProjects() {
        return this.includePrivateProjects;
    }

    public void setIncludePrivateProjects(boolean z) {
        this.includePrivateProjects = z;
    }

    public int getPageNumber() {
        return this.pageNumber;
    }

    public void setPageNumber(int i) {
        this.pageNumber = i;
    }
}
