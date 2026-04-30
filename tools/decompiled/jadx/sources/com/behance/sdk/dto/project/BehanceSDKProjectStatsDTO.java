package com.behance.sdk.dto.project;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectStatsDTO implements Serializable {
    private static final long serialVersionUID = 5631348234776278534L;
    private int appreciationsCount;
    private int commentsCount;
    private int viewsCount;

    public int getAppreciationsCount() {
        return this.appreciationsCount;
    }

    public void setAppreciationsCount(int i) {
        this.appreciationsCount = i;
    }

    public int getViewsCount() {
        return this.viewsCount;
    }

    public void setViewsCount(int i) {
        this.viewsCount = i;
    }

    public int getCommentsCount() {
        return this.commentsCount;
    }

    public void setCommentsCount(int i) {
        this.commentsCount = i;
    }
}
