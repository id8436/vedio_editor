package com.behance.sdk.dto.editor;

import com.behance.sdk.enums.BehanceSDKProjectModuleType;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKEditProjectModuleVideo extends BehanceSDKEditProjectModuleCaptionable {
    private int height;
    private String html;
    private String path;
    private int width;

    @Override // com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract
    public BehanceSDKProjectModuleType getModuleType() {
        return BehanceSDKProjectModuleType.VIDEO;
    }

    public String getPath() {
        return this.path;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public String getHtml() {
        return this.html;
    }

    public void setHtml(String str) {
        this.html = str;
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
}
