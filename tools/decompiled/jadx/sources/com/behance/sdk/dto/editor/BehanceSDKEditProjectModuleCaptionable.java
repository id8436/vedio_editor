package com.behance.sdk.dto.editor;

import com.behance.sdk.enums.BehanceSDKProjectModuleAlignment;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKEditProjectModuleCaptionable extends BehanceSDKEditProjectModuleAbstract {
    private String caption;
    private BehanceSDKProjectModuleAlignment captionAlignment;

    public String getCaption() {
        return this.caption;
    }

    public void setCaption(String str) {
        this.caption = str;
    }

    public BehanceSDKProjectModuleAlignment getCaptionAlignment() {
        return this.captionAlignment;
    }

    public void setCaptionAlignment(String str) {
        this.captionAlignment = BehanceSDKProjectModuleAlignment.fromString(str);
    }
}
