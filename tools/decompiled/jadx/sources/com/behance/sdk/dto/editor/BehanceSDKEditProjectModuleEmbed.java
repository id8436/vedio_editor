package com.behance.sdk.dto.editor;

import com.behance.sdk.enums.BehanceSDKProjectModuleAlignment;
import com.behance.sdk.enums.BehanceSDKProjectModuleType;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKEditProjectModuleEmbed extends BehanceSDKEditProjectModuleCaptionable {
    private BehanceSDKProjectModuleAlignment embedAlignment;
    private boolean fullBleed;
    private String html;

    public String getHtml() {
        return this.html;
    }

    public void setHtml(String str) {
        this.html = str;
    }

    public BehanceSDKProjectModuleAlignment getEmbedAlignment() {
        return this.embedAlignment;
    }

    public void setEmbedAlignment(BehanceSDKProjectModuleAlignment behanceSDKProjectModuleAlignment) {
        this.embedAlignment = behanceSDKProjectModuleAlignment;
    }

    @Override // com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract
    public BehanceSDKProjectModuleType getModuleType() {
        return BehanceSDKProjectModuleType.EMBED;
    }

    public boolean isFullBleed() {
        return this.fullBleed;
    }

    public void setFullBleed(boolean z) {
        this.fullBleed = z;
    }

    public void toggleFullBleed() {
        this.fullBleed = !this.fullBleed;
    }
}
