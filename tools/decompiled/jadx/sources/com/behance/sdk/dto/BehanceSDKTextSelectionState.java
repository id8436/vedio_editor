package com.behance.sdk.dto;

import com.behance.sdk.enums.BehanceSDKProjectEditorTextFont;
import com.behance.sdk.enums.BehanceSDKProjectEditorTextStyle;
import com.behance.sdk.enums.BehanceSDKProjectModuleAlignment;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKTextSelectionState implements Serializable {
    private BehanceSDKProjectModuleAlignment alignment;
    private boolean bold;
    private int color;
    private BehanceSDKProjectEditorTextFont font;
    private boolean isLink;
    private boolean italic;
    private int sizePX;
    private BehanceSDKProjectEditorTextStyle style;
    private boolean styleRemoveable;
    private boolean underline;
    private boolean uppercased;

    public boolean isStyleRemoveable() {
        return this.styleRemoveable;
    }

    public void setStyleRemoveable(boolean z) {
        this.styleRemoveable = z;
    }

    public boolean isBold() {
        return this.bold;
    }

    public void setBold(boolean z) {
        this.bold = z;
    }

    public boolean isItalic() {
        return this.italic;
    }

    public void setItalic(boolean z) {
        this.italic = z;
    }

    public boolean isUnderline() {
        return this.underline;
    }

    public void setUnderline(boolean z) {
        this.underline = z;
    }

    public boolean isUppercased() {
        return this.uppercased;
    }

    public void setUppercased(boolean z) {
        this.uppercased = z;
    }

    public boolean isLink() {
        return this.isLink;
    }

    public void setLink(boolean z) {
        this.isLink = z;
    }

    public int getColor() {
        return this.color;
    }

    public void setColor(int i) {
        this.color = i;
    }

    public BehanceSDKProjectModuleAlignment getAlignment() {
        return this.alignment;
    }

    public void setAlignment(BehanceSDKProjectModuleAlignment behanceSDKProjectModuleAlignment) {
        this.alignment = behanceSDKProjectModuleAlignment;
    }

    public int getSizePX() {
        return this.sizePX;
    }

    public void setSizePX(int i) {
        this.sizePX = i;
    }

    public BehanceSDKProjectEditorTextFont getFont() {
        return this.font;
    }

    public void setFont(BehanceSDKProjectEditorTextFont behanceSDKProjectEditorTextFont) {
        this.font = behanceSDKProjectEditorTextFont;
    }

    public BehanceSDKProjectEditorTextStyle getStyle() {
        return this.style;
    }

    public void setStyle(BehanceSDKProjectEditorTextStyle behanceSDKProjectEditorTextStyle) {
        this.style = behanceSDKProjectEditorTextStyle;
    }
}
