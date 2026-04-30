package com.google.gdata.data.calendar;

import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.acl.AclEntry;

/* JADX INFO: loaded from: classes3.dex */
public class CalendarAclEntry extends AclEntry {
    @Override // com.google.gdata.data.acl.AclEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(CalendarAclEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(CalendarAclEntry.class, SendAclNotificationsProperty.class);
        }
    }

    public SendAclNotificationsProperty getSendAclNotifications() {
        return (SendAclNotificationsProperty) getExtension(SendAclNotificationsProperty.class);
    }

    public void setSendAclNotifications(SendAclNotificationsProperty sendAclNotificationsProperty) {
        if (sendAclNotificationsProperty == null) {
            removeExtension(SendAclNotificationsProperty.class);
        } else {
            setExtension(sendAclNotificationsProperty);
        }
    }

    public boolean hasSendAclNotifications() {
        return hasExtension(SendAclNotificationsProperty.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{CalendarAclEntry " + super.toString() + "}";
    }
}
