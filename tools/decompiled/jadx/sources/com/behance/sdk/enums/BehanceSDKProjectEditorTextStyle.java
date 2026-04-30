package com.behance.sdk.enums;

import com.behance.sdk.R;
import com.behance.sdk.util.BehanceSDKPublishConstants;

/* JADX INFO: loaded from: classes2.dex */
public enum BehanceSDKProjectEditorTextStyle {
    MAIN_TEXT("main-text"),
    TITLE("title"),
    SUB_TITLE("sub-title"),
    CAPTION(BehanceSDKPublishConstants.KEY_CAPTION);

    private final String style;

    BehanceSDKProjectEditorTextStyle(String str) {
        this.style = str;
    }

    public String getStyle() {
        return this.style;
    }

    public int getDisplayStringResource() {
        switch (fromName(this.style)) {
            case MAIN_TEXT:
                return R.string.bsdk_project_editor_style_paragraph;
            case TITLE:
                return R.string.bsdk_project_editor_style_header;
            case SUB_TITLE:
                return R.string.bsdk_project_editor_style_subheader;
            case CAPTION:
                return R.string.bsdk_project_editor_style_caption;
            default:
                return 0;
        }
    }

    public static BehanceSDKProjectEditorTextStyle fromName(String str) {
        for (BehanceSDKProjectEditorTextStyle behanceSDKProjectEditorTextStyle : values()) {
            if (behanceSDKProjectEditorTextStyle.style.equalsIgnoreCase(str)) {
                return behanceSDKProjectEditorTextStyle;
            }
        }
        return null;
    }
}
