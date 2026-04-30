package com.adobe.creativesdk.foundation.internal.pushnotification.model;

import com.adobe.creativesdk.foundation.internal.collaboration.models.AdobeCollaborationRole;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCollaboratorDeleteNotification extends AdobePushNotification {
    private String avatarUrl;
    private boolean isALeaveEvent;
    private boolean isRemoved;
    private boolean isRemover;
    private String removedDisplayName;
    private AdobeCollaborationRole removedRole;

    public AdobeCollaborationRole getRemovedRole() {
        return this.removedRole;
    }

    public void setRemovedRole(AdobeCollaborationRole adobeCollaborationRole) {
        this.removedRole = adobeCollaborationRole;
    }

    public String getRemovedDisplayName() {
        return this.removedDisplayName;
    }

    public void setRemovedDisplayName(String str) {
        this.removedDisplayName = str;
    }

    public boolean isRemoved() {
        return this.isRemoved;
    }

    public void setRemoved(boolean z) {
        this.isRemoved = z;
    }

    public String getAvatarUrl() {
        return this.avatarUrl;
    }

    public void setAvatarUrl(String str) {
        this.avatarUrl = str;
    }

    public boolean isRemover() {
        return this.isRemover;
    }

    public void setRemover(boolean z) {
        this.isRemover = z;
    }

    public boolean isALeaveEvent() {
        return this.isALeaveEvent;
    }

    public void setALeaveEvent(boolean z) {
        this.isALeaveEvent = z;
    }
}
