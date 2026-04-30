package com.adobe.creativesdk.foundation.internal.pushnotification.model;

import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationRole;

/* JADX INFO: loaded from: classes.dex */
public class AdobeInvitationDeclineNotification extends AdobePushNotification {
    private String avatarUrl;
    private boolean isRecipient;
    private boolean isSender;
    private String recipientDisplayName;
    private AdobeCollaborationRole recipientRole;

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
        return this.isSender;
    }

    public void setSender(boolean z) {
        this.isSender = z;
    }

    public boolean isRecipient() {
        return this.isRecipient;
    }

    public void setRecipient(boolean z) {
        this.isRecipient = z;
    }

    public AdobeCollaborationRole getRecipientRole() {
        return this.recipientRole;
    }

    public void setRecipientRole(AdobeCollaborationRole adobeCollaborationRole) {
        this.recipientRole = adobeCollaborationRole;
    }
}
