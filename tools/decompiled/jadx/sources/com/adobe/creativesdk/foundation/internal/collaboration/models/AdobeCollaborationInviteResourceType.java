package com.adobe.creativesdk.foundation.internal.collaboration.models;

import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession;

/* JADX INFO: loaded from: classes.dex */
public enum AdobeCollaborationInviteResourceType {
    ADOBE_COLLABORATION_INVITE_TYPE_ASSET,
    ADOBE_COLLABORATION_INVITE_TYPE_LIBRARY;

    @Override // java.lang.Enum
    public String toString() {
        if (this == ADOBE_COLLABORATION_INVITE_TYPE_ASSET) {
            return AdobeCollaborationSession.APPLICATION_X_SHAREDCLOUD_COLLECTION_JSON;
        }
        if (this != ADOBE_COLLABORATION_INVITE_TYPE_LIBRARY) {
            return "";
        }
        return "application/vnd.adobe.library+dcx";
    }

    public static AdobeCollaborationInviteResourceType getCollaborationTypeFromString(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (AdobeCollaborationSession.APPLICATION_X_SHAREDCLOUD_COLLECTION_JSON.equals(str)) {
            return ADOBE_COLLABORATION_INVITE_TYPE_ASSET;
        }
        if ("application/vnd.adobe.library+dcx".equals(str)) {
            return ADOBE_COLLABORATION_INVITE_TYPE_LIBRARY;
        }
        return null;
    }
}
