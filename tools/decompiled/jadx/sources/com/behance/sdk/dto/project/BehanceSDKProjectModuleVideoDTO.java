package com.behance.sdk.dto.project;

import com.behance.sdk.enums.BehanceSDKProjectModuleType;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectModuleVideoDTO extends BehanceSDKAbstractProjectModuleDTO {
    private static final long serialVersionUID = 3940509017288235471L;
    private String embedHTML;
    private int height;
    private String imageSrc;
    private String playerSkin;
    private String playerUrl;
    private String videoSrc;
    private int width;

    public BehanceSDKProjectModuleVideoDTO() {
        setType(BehanceSDKProjectModuleType.VIDEO);
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public String getVideoSrc() {
        return this.videoSrc;
    }

    public void setVideoSrc(String str) {
        this.videoSrc = str;
    }

    public String getImageSrc() {
        return this.imageSrc != null ? this.imageSrc : "";
    }

    public void setImageSrc(String str) {
        this.imageSrc = str;
    }

    public String getPlayerUrl() {
        return this.playerUrl;
    }

    public void setPlayerUrl(String str) {
        this.playerUrl = str;
    }

    public String getPlayerSkin() {
        return this.playerSkin;
    }

    public void setPlayerSkin(String str) {
        this.playerSkin = str;
    }

    public String getEmbedHTML() {
        return this.embedHTML;
    }

    public void setEmbedHTML(String str) {
        this.embedHTML = str;
    }
}
