package com.behance.sdk.dto.editor;

import com.behance.sdk.enums.BehanceSDKProjectModuleAlignment;
import com.behance.sdk.enums.BehanceSDKProjectModuleType;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKEditProjectModuleText extends BehanceSDKEditProjectModuleAbstract {
    private String html;
    private BehanceSDKProjectModuleAlignment textAlignment;

    public String getHtml() {
        return this.html;
    }

    public void setHtml(String str) {
        this.html = str;
    }

    public BehanceSDKProjectModuleAlignment getTextAlignment() {
        return this.textAlignment;
    }

    public void setTextAlignment(BehanceSDKProjectModuleAlignment behanceSDKProjectModuleAlignment) {
        this.textAlignment = behanceSDKProjectModuleAlignment;
    }

    @Override // com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract
    public BehanceSDKProjectModuleType getModuleType() {
        return BehanceSDKProjectModuleType.TEXT;
    }
}
