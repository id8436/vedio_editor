package com.adobe.creativesdk.foundation.internal.pushnotification.model;

/* JADX INFO: loaded from: classes.dex */
public enum AdobePushNotificationSubType {
    ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT,
    ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED,
    ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER,
    ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF,
    ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE,
    ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE,
    ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE,
    ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE;

    @Override // java.lang.Enum
    public String toString() {
        switch (this) {
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:
                return "notification.asset.comment";
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED:
                return "sharing.invite";
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:
                return "sharing.invite.accept.other";
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:
                return "sharing.invite.accept.self";
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:
                return "sharing.collaboration.updaterole";
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:
                return "sharing.collaboration.remove";
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE:
                return "sharing.invite.decline";
            case ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE:
                return "sharing.invite.revoke";
            default:
                return "";
        }
    }

    public static AdobePushNotificationSubType getValue(String str) {
        if (str == null) {
            return null;
        }
        if (str.equalsIgnoreCase(ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT.toString())) {
            return ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT;
        }
        if (str.equalsIgnoreCase(ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED.toString())) {
            return ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED;
        }
        if (str.equalsIgnoreCase(ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF.toString())) {
            return ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF;
        }
        if (str.equalsIgnoreCase(ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER.toString())) {
            return ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER;
        }
        if (str.equalsIgnoreCase(ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE.toString())) {
            return ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE;
        }
        if (str.equalsIgnoreCase(ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE.toString())) {
            return ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE;
        }
        if (str.equalsIgnoreCase(ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE.toString())) {
            return ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE;
        }
        if (str.equalsIgnoreCase(ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE.toString())) {
            return ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE;
        }
        return null;
    }
}
