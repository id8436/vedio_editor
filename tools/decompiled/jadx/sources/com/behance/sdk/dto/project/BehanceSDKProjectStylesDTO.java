package com.behance.sdk.dto.project;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectStylesDTO {
    private int bgColor;
    private boolean bgImageRepeat;
    private String bgImageUrl;
    private String captionCSS;
    private String customCSS;
    private String dividerCSS;
    private String linkCSS;
    private String mainTextCSS;
    private int moduleMarginBottom;
    private int projectMarginTop;
    private String subTitleCSS;
    private String titleCSS;
    private String underlineCSS;

    public String getCustomCSS() {
        return this.customCSS;
    }

    public void setCustomCSS(String str) {
        this.customCSS = str;
    }

    public int getBgColor() {
        return this.bgColor;
    }

    public void setBgColor(int i) {
        this.bgColor = i;
    }

    public int getProjectMarginTop() {
        return this.projectMarginTop;
    }

    public void setProjectMarginTop(int i) {
        this.projectMarginTop = i;
    }

    public int getModuleMarginBottom() {
        return this.moduleMarginBottom;
    }

    public void setModuleMarginBottom(int i) {
        this.moduleMarginBottom = i;
    }

    public String getDividerCSS() {
        return this.dividerCSS;
    }

    public void setDividerCSS(String str) {
        this.dividerCSS = str;
    }

    public String getBgImageUrl() {
        return this.bgImageUrl;
    }

    public void setBgImageUrl(String str) {
        this.bgImageUrl = str;
    }

    public String getTitleCSS() {
        return this.titleCSS;
    }

    public void setTitleCSS(String str) {
        this.titleCSS = str;
    }

    public String getSubTitleCSS() {
        return this.subTitleCSS;
    }

    public void setSubTitleCSS(String str) {
        this.subTitleCSS = str;
    }

    public String getMainTextCSS() {
        return this.mainTextCSS;
    }

    public void setMainTextCSS(String str) {
        this.mainTextCSS = str;
    }

    public String getCaptionCSS() {
        return this.captionCSS;
    }

    public void setCaptionCSS(String str) {
        this.captionCSS = str;
    }

    public String getLinkCSS() {
        return this.linkCSS;
    }

    public void setLinkCSS(String str) {
        this.linkCSS = str;
    }

    public String getUnderlineCSS() {
        return this.underlineCSS;
    }

    public void setUnderlineCSS(String str) {
        this.underlineCSS = str;
    }

    public void setBgImageRepeat(boolean z) {
        this.bgImageRepeat = z;
    }

    public boolean isBgImageRepeat() {
        return this.bgImageRepeat;
    }
}
