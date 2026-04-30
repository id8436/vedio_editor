package com.google.gdata.data.calendar;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
public class TimeZoneProperty extends ValueConstruct {
    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(TimeZoneProperty.class, Namespaces.gCalNs, "timezone");
    }

    public TimeZoneProperty() {
        this(null);
    }

    public TimeZoneProperty(String str) {
        super(Namespaces.gCalNs, "timezone", "value", str);
    }
}
