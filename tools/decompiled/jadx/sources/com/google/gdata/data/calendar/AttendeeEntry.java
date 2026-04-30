package com.google.gdata.data.calendar;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes3.dex */
public class AttendeeEntry extends BaseEntry<AttendeeEntry> {
    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(CalendarEventEntry.class, SendEventNotificationsProperty.getDefaultDescription());
    }

    public boolean getSendEventNotifications() {
        SendEventNotificationsProperty sendEventNotificationsProperty = (SendEventNotificationsProperty) getExtension(SendEventNotificationsProperty.class);
        return sendEventNotificationsProperty != null && Boolean.parseBoolean(sendEventNotificationsProperty.getValue());
    }

    public void setSendEventNotifications(boolean z) {
        setExtension(z ? SendEventNotificationsProperty.TRUE : SendEventNotificationsProperty.FALSE);
    }
}
