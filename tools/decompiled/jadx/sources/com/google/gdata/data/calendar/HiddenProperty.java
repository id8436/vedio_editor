package com.google.gdata.data.calendar;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;
import com.google.gdata.data.gtt.HiddenCategory;

/* JADX INFO: loaded from: classes3.dex */
public class HiddenProperty extends ValueConstruct {
    public static final HiddenProperty TRUE = new HiddenProperty("true");
    public static final HiddenProperty FALSE = new HiddenProperty("false");

    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(HiddenProperty.class, Namespaces.gCalNs, HiddenCategory.Label.HIDDEN);
    }

    public HiddenProperty() {
        this(null);
    }

    public HiddenProperty(String str) {
        super(Namespaces.gCalNs, HiddenCategory.Label.HIDDEN, "value", str);
    }
}
