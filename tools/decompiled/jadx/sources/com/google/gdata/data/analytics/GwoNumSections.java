package com.google.gdata.data.analytics;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GwoNumSections.XML_NAME, nsAlias = AnalyticsNamespace.GWO_ALIAS, nsUri = AnalyticsNamespace.GWO)
public class GwoNumSections extends ValueConstruct {
    static final String XML_NAME = "numSections";

    public GwoNumSections() {
        this(null);
    }

    public GwoNumSections(String str) {
        super(AnalyticsNamespace.GWO_NS, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GwoNumSections.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{GwoNumSections value=" + getValue() + "}";
    }
}
