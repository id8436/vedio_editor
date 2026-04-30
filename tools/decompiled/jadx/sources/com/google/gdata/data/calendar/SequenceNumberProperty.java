package com.google.gdata.data.calendar;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
public class SequenceNumberProperty extends ValueConstruct {
    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(SequenceNumberProperty.class, Namespaces.gCalNs, "sequence");
    }

    public SequenceNumberProperty() {
        this(null);
    }

    public SequenceNumberProperty(String str) {
        super(Namespaces.gCalNs, "sequence", "value", str);
    }
}
