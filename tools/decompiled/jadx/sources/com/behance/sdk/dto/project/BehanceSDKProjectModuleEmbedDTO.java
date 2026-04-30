package com.behance.sdk.dto.project;

import com.behance.sdk.enums.BehanceSDKProjectModuleAlignment;
import com.behance.sdk.enums.BehanceSDKProjectModuleType;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectModuleEmbedDTO extends BehanceSDKAbstractProjectModuleDTO {
    private static final long serialVersionUID = 8255416349782999744L;
    private BehanceSDKProjectModuleAlignment captionAlignment;
    private String captionFormattedText;
    private String captionPlainText;
    private String embedHTML;

    public BehanceSDKProjectModuleEmbedDTO() {
        setType(BehanceSDKProjectModuleType.EMBED);
    }

    public String getEmbedHTML() {
        return this.embedHTML;
    }

    public void setEmbedHTML(String str) {
        this.embedHTML = str;
    }

    public String getCaptionFormattedText() {
        return this.captionFormattedText;
    }

    public void setCaptionFormattedText(String str) {
        this.captionFormattedText = str.replace("<div", "<div class=\"caption\">");
    }

    public String getCaptionPlainText() {
        return this.captionPlainText;
    }

    public void setCaptionPlainText(String str) {
        this.captionPlainText = str;
    }

    public BehanceSDKProjectModuleAlignment getCaptionAlignment() {
        return this.captionAlignment;
    }

    public void setCaptionAlignment(String str) {
        this.captionAlignment = BehanceSDKProjectModuleAlignment.fromString(str);
    }
}
