package com.adobe.creativesdk.foundation.internal.collaboration.models;

/* JADX INFO: loaded from: classes.dex */
public enum AdobeCollaborationRole {
    ADOBE_COLLABORATION_TYPE_EDITOR,
    ADOBE_COLLABORATION_TYPE_VIEWER;

    @Override // java.lang.Enum
    public String toString() {
        if (this == ADOBE_COLLABORATION_TYPE_EDITOR) {
            return "editor";
        }
        if (this != ADOBE_COLLABORATION_TYPE_VIEWER) {
            return "";
        }
        return "viewer";
    }

    public static AdobeCollaborationRole getCollaborationTypeFromString(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (str.equalsIgnoreCase(ADOBE_COLLABORATION_TYPE_EDITOR.toString())) {
            return ADOBE_COLLABORATION_TYPE_EDITOR;
        }
        if (str.equalsIgnoreCase(ADOBE_COLLABORATION_TYPE_VIEWER.toString())) {
            return ADOBE_COLLABORATION_TYPE_VIEWER;
        }
        return null;
    }
}
