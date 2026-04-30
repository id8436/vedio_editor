package com.behance.sdk.dto.editor;

import com.behance.sdk.enums.BehanceSDKProjectModuleType;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKEditProjectModuleAudio extends BehanceSDKEditProjectModuleCaptionable {
    private String html;

    @Override // com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract
    public BehanceSDKProjectModuleType getModuleType() {
        return BehanceSDKProjectModuleType.AUDIO;
    }

    public String getHtml() {
        return this.html;
    }

    public void setHtml(String str) {
        this.html = str;
    }
}
