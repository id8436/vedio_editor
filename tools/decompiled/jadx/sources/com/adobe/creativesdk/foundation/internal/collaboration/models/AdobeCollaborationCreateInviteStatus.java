package com.adobe.creativesdk.foundation.internal.collaboration.models;

/* JADX INFO: loaded from: classes.dex */
public enum AdobeCollaborationCreateInviteStatus {
    ADOBE_COLLABORATION_CREATE_INVITE_STATUS_SUCCESS,
    ADOBE_COLLABORATION_CREATE_INVITE_STATUS_FAILURE;

    public int toInteger() {
        switch (this) {
            case ADOBE_COLLABORATION_CREATE_INVITE_STATUS_FAILURE:
                return 0;
            case ADOBE_COLLABORATION_CREATE_INVITE_STATUS_SUCCESS:
                return 1;
            default:
                return 2;
        }
    }

    public static AdobeCollaborationCreateInviteStatus getEnumFromInteger(int i) {
        switch (i) {
            case 0:
                return ADOBE_COLLABORATION_CREATE_INVITE_STATUS_FAILURE;
            case 1:
                return ADOBE_COLLABORATION_CREATE_INVITE_STATUS_SUCCESS;
            default:
                return null;
        }
    }
}
