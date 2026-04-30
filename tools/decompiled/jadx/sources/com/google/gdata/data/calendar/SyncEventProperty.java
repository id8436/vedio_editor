package com.google.gdata.data.calendar;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
public class SyncEventProperty extends ValueConstruct {
    public static final SyncEventProperty TRUE = new SyncEventProperty(String.valueOf(true));
    public static final SyncEventProperty FALSE = new SyncEventProperty(String.valueOf(false));

    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(SyncEventProperty.class, Namespaces.gCalNs, "syncEvent");
    }

    public SyncEventProperty() {
        this(null);
    }

    public SyncEventProperty(String str) {
        super(Namespaces.gCalNs, "syncEvent", "value", str);
    }
}
