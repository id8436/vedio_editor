package com.behance.sdk.dto.project;

import com.behance.sdk.enums.BehanceSDKProjectModuleType;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectModuleTextDTO extends BehanceSDKAbstractProjectModuleDTO {
    private static final long serialVersionUID = 1338853477624469887L;
    private String customCSS;
    private String formattedText;
    private String moduleHTML;
    private String plainText;

    public BehanceSDKProjectModuleTextDTO() {
        setType(BehanceSDKProjectModuleType.TEXT);
    }

    public String getFormattedText() {
        return this.formattedText;
    }

    public void setFormattedText(String str) {
        this.formattedText = str;
    }

    public String getPlainText() {
        return this.plainText;
    }

    public void setPlainText(String str) {
        this.plainText = str;
    }

    public String getModuleHTML() {
        return this.moduleHTML;
    }

    public void setModuleHTML(String str) {
        this.moduleHTML = str;
    }

    public String getCustomCSS() {
        return this.customCSS;
    }

    public void setCustomCSS(String str) {
        this.customCSS = str;
    }
}
