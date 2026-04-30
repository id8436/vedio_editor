package com.google.gdata.data.calendar;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
public class QuickAddProperty extends ValueConstruct {
    public static final QuickAddProperty TRUE = new QuickAddProperty("true");
    public static final QuickAddProperty FALSE = new QuickAddProperty("false");

    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(QuickAddProperty.class, Namespaces.gCalNs, "quickadd");
    }

    public QuickAddProperty() {
        this(null);
    }

    public QuickAddProperty(String str) {
        super(Namespaces.gCalNs, "quickadd", "value", str);
    }
}
