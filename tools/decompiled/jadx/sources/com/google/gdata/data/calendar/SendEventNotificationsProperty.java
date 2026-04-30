package com.google.gdata.data.calendar;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
public class SendEventNotificationsProperty extends ValueConstruct {
    public static final SendEventNotificationsProperty TRUE = new SendEventNotificationsProperty(String.valueOf(true));
    public static final SendEventNotificationsProperty FALSE = new SendEventNotificationsProperty(String.valueOf(false));

    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(SendEventNotificationsProperty.class, Namespaces.gCalNs, "sendEventNotifications");
    }

    public SendEventNotificationsProperty() {
        this(null);
    }

    public SendEventNotificationsProperty(String str) {
        super(Namespaces.gCalNs, "sendEventNotifications", "value", str);
    }
}
