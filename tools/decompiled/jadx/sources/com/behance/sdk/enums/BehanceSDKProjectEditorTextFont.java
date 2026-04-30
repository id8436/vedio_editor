package com.behance.sdk.enums;

import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public enum BehanceSDKProjectEditorTextFont {
    HELVETICA("helvetica"),
    ARIAL("arial"),
    TIMES("times"),
    VERDANA("verdana"),
    TAHOMA("tahoma"),
    GEORGIA("georgia, serif");

    private final String font;

    BehanceSDKProjectEditorTextFont(String str) {
        this.font = str;
    }

    public String getFont() {
        return this.font;
    }

    public int getDisplayStringResource() {
        switch (fromName(this.font)) {
            case HELVETICA:
                return R.string.bsdk_project_editor_font_helvetica;
            case ARIAL:
                return R.string.bsdk_project_editor_font_arial;
            case TIMES:
                return R.string.bsdk_project_editor_font_times_new_roman;
            case VERDANA:
                return R.string.bsdk_project_editor_font_verdana;
            case TAHOMA:
                return R.string.bsdk_project_editor_font_tahoma;
            case GEORGIA:
                return R.string.bsdk_project_editor_font_georgia;
            default:
                return 0;
        }
    }

    public static BehanceSDKProjectEditorTextFont fromName(String str) {
        for (BehanceSDKProjectEditorTextFont behanceSDKProjectEditorTextFont : values()) {
            if (behanceSDKProjectEditorTextFont.font.equalsIgnoreCase(str)) {
                return behanceSDKProjectEditorTextFont;
            }
        }
        return null;
    }

    public static BehanceSDKProjectEditorTextFont fromPartialName(String str) {
        for (BehanceSDKProjectEditorTextFont behanceSDKProjectEditorTextFont : values()) {
            if (behanceSDKProjectEditorTextFont.font.contains(str)) {
                return behanceSDKProjectEditorTextFont;
            }
        }
        return null;
    }
}
