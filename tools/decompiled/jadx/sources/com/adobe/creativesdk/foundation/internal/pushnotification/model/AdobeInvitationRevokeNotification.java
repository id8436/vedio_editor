package com.adobe.creativesdk.foundation.internal.pushnotification.model;

import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationRole;

/* JADX INFO: loaded from: classes.dex */
public class AdobeInvitationRevokeNotification extends AdobePushNotification {
    private String avatarUrl;
    private boolean recipient;
    private String recipientDisplayName;
    private AdobeCollaborationRole recipientRole;
    private boolean sender;

    public String getAvatarUrl() {
        return this.avatarUrl;
    }

    public void setAvatarUrl(String str) {
        this.avatarUrl = str;
    }

    public String getRecipientDisplayName() {
        return this.recipientDisplayName;
    }

    public void setRecipientDisplayName(String str) {
        this.recipientDisplayName = str;
    }

    public boolean isSender() {
        return this.sender;
    }

    public void setSender(boolean z) {
        this.sender = z;
    }

    public boolean isRecipient() {
        return this.recipient;
    }

    public void setRecipient(boolean z) {
        this.recipient = z;
    }

    public AdobeCollaborationRole getRecipientRole() {
        return this.recipientRole;
    }

    public void setRecipientRole(AdobeCollaborationRole adobeCollaborationRole) {
        this.recipientRole = adobeCollaborationRole;
    }
}
