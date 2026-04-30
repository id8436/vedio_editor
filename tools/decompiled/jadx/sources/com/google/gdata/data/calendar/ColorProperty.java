package com.google.gdata.data.calendar;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
public class ColorProperty extends ValueConstruct {
    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(ColorProperty.class, Namespaces.gCalNs, "color");
    }

    public ColorProperty() {
        this(null);
    }

    public ColorProperty(String str) {
        super(Namespaces.gCalNs, "color", "value", str);
    }
}
