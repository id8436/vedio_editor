package com.adobe.creativesdk.foundation.adobeinternal.adobe360;

import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.data.ILink;

/* JADX INFO: loaded from: classes.dex */
public enum Adobe360WorkflowActionType {
    Adobe360WorkflowActionEdit(ILink.Rel.ENTRY_EDIT),
    Adobe360WorkflowActionEmbed(BehanceSDKPublishConstants.KEY_EMBED),
    Adobe360WorkflowActionEmbedN("embedN"),
    Adobe360WorkflowActionCapture("capture"),
    Adobe360WorkflowActionCaptureN("captureN"),
    Adobe360WorkflowActionUnknown("miscellaneous");

    private String _text;

    Adobe360WorkflowActionType(String str) {
        this._text = str;
    }

    public static Adobe360WorkflowActionType getActionType(String str) {
        if (str.equalsIgnoreCase(ILink.Rel.ENTRY_EDIT)) {
            return Adobe360WorkflowActionEdit;
        }
        if (str.equalsIgnoreCase("embedN")) {
            return Adobe360WorkflowActionEmbedN;
        }
        if (str.equalsIgnoreCase(BehanceSDKPublishConstants.KEY_EMBED)) {
            return Adobe360WorkflowActionEmbed;
        }
        if (str.equalsIgnoreCase("capture")) {
            return Adobe360WorkflowActionCapture;
        }
        if (str.equalsIgnoreCase("captureN")) {
            return Adobe360WorkflowActionCaptureN;
        }
        return null;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this._text;
    }
}
