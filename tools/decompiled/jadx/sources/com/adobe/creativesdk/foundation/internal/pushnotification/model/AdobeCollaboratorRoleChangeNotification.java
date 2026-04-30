package com.adobe.creativesdk.foundation.internal.pushnotification.model;

import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationRole;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCollaboratorRoleChangeNotification extends AdobePushNotification {
    private String avatarUrl;
    private boolean isSender = false;
    private AdobeCollaborationRole previousRole;
    private String senderName;
    private AdobeCollaborationRole updatedRole;

    public String getSenderName() {
        return this.senderName;
    }

    public void setSenderName(String str) {
        this.senderName = str;
    }

    public boolean isSender() {
        return this.isSender;
    }

    public void setSender(boolean z) {
        this.isSender = z;
    }

    public AdobeCollaborationRole getPreviousRole() {
        return this.previousRole;
    }

    public void setPreviousRole(AdobeCollaborationRole adobeCollaborationRole) {
        this.previousRole = adobeCollaborationRole;
    }

    public AdobeCollaborationRole getUpdatedRole() {
        return this.updatedRole;
    }

    public void setUpdatedRole(AdobeCollaborationRole adobeCollaborationRole) {
        this.updatedRole = adobeCollaborationRole;
    }

    public String getAvatarUrl() {
        return this.avatarUrl;
    }

    public void setAvatarUrl(String str) {
        this.avatarUrl = str;
    }
}
