package com.behance.sdk.dto.editor;

import com.behance.sdk.enums.BehanceSDKProjectModuleType;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKEditProjectModuleImage extends BehanceSDKEditProjectModuleCaptionable {
    private String disp;
    private boolean fullBleed;
    private int height;
    private String path;
    private String src;
    private int width;

    public boolean isFullBleed() {
        return this.fullBleed;
    }

    public void setFullBleed(boolean z) {
        this.fullBleed = z;
    }

    public void toggleFullBleed() {
        this.fullBleed = !this.fullBleed;
    }

    public String getPath() {
        return this.path;
    }

    public void setPath(String str) {
        this.path = str;
    }

    @Override // com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract
    public BehanceSDKProjectModuleType getModuleType() {
        return BehanceSDKProjectModuleType.IMAGE;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public String getSrc() {
        return this.src;
    }

    public void setSrc(String str) {
        this.src = str;
    }

    public String getDisp() {
        return this.disp;
    }

    public void setDisp(String str) {
        this.disp = str;
    }
}
