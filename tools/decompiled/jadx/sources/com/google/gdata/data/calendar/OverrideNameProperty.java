package com.google.gdata.data.calendar;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
public class OverrideNameProperty extends ValueConstruct {
    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(OverrideNameProperty.class, Namespaces.gCalNs, "overridename");
    }

    public OverrideNameProperty() {
        this(null);
    }

    public OverrideNameProperty(String str) {
        super(Namespaces.gCalNs, "overridename", "value", str);
    }
}
