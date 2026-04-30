package com.behance.sdk.dto.project;

import com.behance.sdk.enums.BehanceSDKProjectModuleAlignment;
import com.behance.sdk.enums.BehanceSDKProjectModuleType;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectModuleImageDTO extends BehanceSDKAbstractProjectModuleDTO {
    private static final long serialVersionUID = -5955021798991383472L;
    private BehanceSDKProjectModuleAlignment captionAlignment;
    private String captionFormattedText;
    private String captionPlainText;
    private boolean fullBleed;
    private String hdSrcUrl;
    private int height;
    private String srcUrl;
    private int width;

    public BehanceSDKProjectModuleImageDTO() {
        setType(BehanceSDKProjectModuleType.IMAGE);
    }

    public String getSrcUrl() {
        return this.srcUrl != null ? this.srcUrl : "";
    }

    public void setSrcUrl(String str) {
        this.srcUrl = str;
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

    public String getHDSrcUrl() {
        return (this.hdSrcUrl == null || this.hdSrcUrl.length() <= 0) ? getSrcUrl() : this.hdSrcUrl;
    }

    public void setHDSrcUrl(String str) {
        this.hdSrcUrl = str;
    }

    public boolean isFullBleed() {
        return this.fullBleed;
    }

    public void setFullBleed(boolean z) {
        this.fullBleed = z;
    }

    public String getCaptionFormattedText() {
        return this.captionFormattedText;
    }

    public void setCaptionFormattedText(String str) {
        this.captionFormattedText = str.replace("<div", "<div class=\"caption\"");
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
