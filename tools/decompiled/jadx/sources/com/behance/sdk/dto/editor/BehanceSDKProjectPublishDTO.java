package com.behance.sdk.dto.editor;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKProjectPublishDTO {
    private int coverImageId;
    private BehanceSDKEditorProjectDTO project;
    private boolean publish = true;
    private boolean shareFacebook = false;
    private boolean shareTwitter = false;

    public int getCoverImageId() {
        return this.coverImageId;
    }

    public void setCoverImageId(int i) {
        this.coverImageId = i;
    }

    public boolean isPublish() {
        return this.publish;
    }

    public void setPublish(boolean z) {
        this.publish = z;
    }

    public BehanceSDKEditorProjectDTO getProject() {
        return this.project;
    }

    public void setProject(BehanceSDKEditorProjectDTO behanceSDKEditorProjectDTO) {
        this.project = behanceSDKEditorProjectDTO;
    }

    public boolean isShareFacebook() {
        return this.shareFacebook;
    }

    public void setShareFacebook(boolean z) {
        this.shareFacebook = z;
    }

    public boolean isShareTwitter() {
        return this.shareTwitter;
    }

    public void setShareTwitter(boolean z) {
        this.shareTwitter = z;
    }
}
