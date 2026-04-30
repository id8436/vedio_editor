package com.google.gdata.data.calendar;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
public class IcalUIDProperty extends ValueConstruct {
    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(IcalUIDProperty.class, Namespaces.gCalNs, "uid");
    }

    public IcalUIDProperty() {
        this(null);
    }

    public IcalUIDProperty(String str) {
        super(Namespaces.gCalNs, "uid", "value", str);
    }
}
