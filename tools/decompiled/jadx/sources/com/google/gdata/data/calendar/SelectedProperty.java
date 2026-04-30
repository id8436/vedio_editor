package com.google.gdata.data.calendar;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
public class SelectedProperty extends ValueConstruct {
    public static final SelectedProperty TRUE = new SelectedProperty("true");
    public static final SelectedProperty FALSE = new SelectedProperty("false");

    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(SelectedProperty.class, Namespaces.gCalNs, "selected");
    }

    public SelectedProperty() {
        this(null);
    }

    public SelectedProperty(String str) {
        super(Namespaces.gCalNs, "selected", "value", str);
    }
}
