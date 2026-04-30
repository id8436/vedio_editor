package com.google.gdata.data.analytics;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Definition.XML_NAME, nsAlias = AnalyticsNamespace.DXP_ALIAS, nsUri = AnalyticsNamespace.DXP)
public class Definition extends ValueConstruct {
    static final String XML_NAME = "definition";

    public Definition() {
        this(null);
    }

    public Definition(String str) {
        super(AnalyticsNamespace.DXP_NS, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Definition.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Definition value=" + getValue() + "}";
    }
}
