package com.behance.sdk.dto.project;

import com.behance.sdk.dto.search.BehanceSDKFeaturedDTO;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectFeaturedDTO extends BehanceSDKFeaturedDTO {
    private long featuredDate;
    private String projectUrl;

    public long getFeaturedDate() {
        return this.featuredDate;
    }

    public void setFeaturedDate(long j) {
        this.featuredDate = j;
    }

    public String getProjectUrl() {
        return this.projectUrl;
    }

    public void setProjectUrl(String str) {
        this.projectUrl = str;
    }
}
