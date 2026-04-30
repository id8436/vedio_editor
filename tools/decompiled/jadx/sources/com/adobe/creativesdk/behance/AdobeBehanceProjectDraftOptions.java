package com.adobe.creativesdk.behance;

import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class AdobeBehanceProjectDraftOptions {
    private File coverImage;
    private String creativeFields;
    private boolean projectContainsAdultContent;
    private BehanceSDKCopyrightOption projectCopyrightSettings;
    private String projectDescription;
    private String projectTags;
    private String projectTitle;

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

    public String getProjectTags() {
        return this.projectTags;
    }

    public void setProjectTags(String str) {
        this.projectTags = str;
    }

    public BehanceSDKCopyrightOption getProjectCopyrightSettings() {
        return this.projectCopyrightSettings;
    }

    public void setProjectCopyrightSettings(BehanceSDKCopyrightOption behanceSDKCopyrightOption) {
        this.projectCopyrightSettings = behanceSDKCopyrightOption;
    }

    public boolean isProjectContainsAdultContent() {
        return this.projectContainsAdultContent;
    }

    public void setProjectContainsAdultContent(boolean z) {
        this.projectContainsAdultContent = z;
    }

    public String getProjectCreativeFields() {
        return this.creativeFields;
    }

    public void setProjectCreativeFields(String str) {
        this.creativeFields = str;
    }

    public File getProjectCoverImage() {
        return this.coverImage;
    }

    public void setProjectCoverImage(File file) {
        this.coverImage = file;
    }
}
