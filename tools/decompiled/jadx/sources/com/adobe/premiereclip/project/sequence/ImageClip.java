package com.adobe.premiereclip.project.sequence;

import com.adobe.premiereclip.dcx.DCXUtils;
import com.adobe.premiereclip.dcx.DCXWriter;
import com.adobe.premiereclip.looks.LocalLooks;
import com.adobe.premiereclip.media.TitleImage;
import com.adobe.premiereclip.mediaengine.gpumedia.Rotation;
import com.adobe.premiereclip.project.sequence.Clip;
import java.io.File;
import java.util.Date;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class ImageClip extends Clip {
    private String storyCardText;
    private TitleImage titleImage;

    public ImageClip(AssetReference assetReference, long j, long j2, boolean z, String str) {
        super(assetReference, j, j2, z ? Clip.CLIP_TYPE.IMAGE_TITLE : Clip.CLIP_TYPE.IMAGE_NON_TITLE, str);
        this.storyCardText = "";
    }

    public void setTitleImage(TitleImage titleImage) {
        if (getClipType() == Clip.CLIP_TYPE.IMAGE_TITLE) {
            this.titleImage = titleImage;
            getAssetReference().setAssetPath(titleImage.getFilePath());
            getAssetReference().setWidth(1920);
            getAssetReference().setHeight(1080);
            getAssetReference().setRotation(Rotation.NORMAL);
        }
    }

    public TitleImage copyTitleImage() {
        if (this.titleImage != null) {
            return this.titleImage.copy();
        }
        return null;
    }

    public void updateTitleImage() {
        if (this.titleImage != null) {
            this.titleImage.update();
            getAssetReference().setAssetId(UUID.randomUUID().toString());
            getAssetReference().setAssetPath(this.titleImage.getFilePath());
            getAssetReference().setOriginalAssetPath(this.titleImage.getFilePath());
            getAssetReference().setOriginalAssetDate(DCXUtils.getFormattedDate(new Date(new File(this.titleImage.getFilePath()).lastModified())));
            DCXWriter.updateClip(this);
        }
    }

    public String getTitleText() {
        if (this.titleImage == null) {
            return null;
        }
        return this.titleImage.getTitleText();
    }

    public void setTitleText(String str) {
        if (this.titleImage != null) {
            this.titleImage.setTitleText(str);
        }
    }

    public String getTextColor() {
        if (this.titleImage == null) {
            return null;
        }
        return this.titleImage.getTextColor();
    }

    public void setTextColor(String str) {
        if (this.titleImage != null) {
            this.titleImage.setTextColor(str);
        }
    }

    public String getBackgroundColor() {
        if (this.titleImage == null) {
            return null;
        }
        return this.titleImage.getBackgroundColor();
    }

    public void setBackgroundColor(String str) {
        if (this.titleImage != null) {
            this.titleImage.setBackgroundColor(str);
        }
    }

    public void setStoryCard(String str) {
        setClipType(Clip.CLIP_TYPE.STORY_CARD);
        this.titleImage = null;
        this.storyCardText = str;
        restoreClipOptions();
        this.look = LocalLooks.getClipLook("0");
    }

    public boolean isStoryCard() {
        return getClipType() == Clip.CLIP_TYPE.STORY_CARD;
    }

    public String getStoryCardText() {
        return this.storyCardText;
    }
}
