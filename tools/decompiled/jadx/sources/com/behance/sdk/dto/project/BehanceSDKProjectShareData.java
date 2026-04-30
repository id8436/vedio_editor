package com.behance.sdk.dto.project;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectShareData implements Serializable {
    private static final long serialVersionUID = 5238898567073234506L;
    private String blogName;
    private String coverImagePath;
    private String projectCoverImageURL;
    private String projectDescription;
    private String projectID;
    private String projectOwnerName;
    private String projectOwnerProfileURL;
    private String projectTitle;
    private String publishOption;
    private String short_url;
    private String tags;

    public void setTags(String str) {
        this.tags = str;
    }

    public void setShortUrl(String str) {
        this.short_url = str;
    }

    public void setBlogName(String str) {
        this.blogName = str;
    }

    public void setPublishOption(String str) {
        this.publishOption = str;
    }

    public void setProjectID(String str) {
        this.projectID = str;
    }

    public String getProjectID() {
        return this.projectID;
    }

    public String getBlogName() {
        return this.blogName;
    }

    public String getShortUrl() {
        return this.short_url;
    }

    public String getTags() {
        return this.tags;
    }

    public String getPublishOption() {
        return this.publishOption;
    }

    public String getProjectTitle() {
        return this.projectTitle;
    }

    public void setProjectTitle(String str) {
        this.projectTitle = str;
    }

    public String getProjectDescription() {
        return this.projectDescription;
    }

    public void setProjectDescription(String str) {
        this.projectDescription = str;
    }

    public String getCoverImagePath() {
        return this.coverImagePath;
    }

    public void setCoverImagePath(String str) {
        this.coverImagePath = str;
    }

    public String getProjectOwnerName() {
        return this.projectOwnerName;
    }

    public void setProjectOwnerName(String str) {
        this.projectOwnerName = str;
    }

    public String getProjectOwnerProfileURL() {
        return this.projectOwnerProfileURL;
    }

    public void setProjectOwnerProfileURL(String str) {
        this.projectOwnerProfileURL = str;
    }

    public String getProjectCoverImageURL() {
        return this.projectCoverImageURL;
    }

    public void setProjectCoverImageURL(String str) {
        this.projectCoverImageURL = str;
    }
}
