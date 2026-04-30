package com.google.gdata.data.analytics;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = EndDate.XML_NAME, nsAlias = AnalyticsNamespace.DXP_ALIAS, nsUri = AnalyticsNamespace.DXP)
public class EndDate extends ValueConstruct {
    static final String XML_NAME = "endDate";

    public EndDate() {
        this(null);
    }

    public EndDate(String str) {
        super(AnalyticsNamespace.DXP_NS, XML_NAME, null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(EndDate.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{EndDate value=" + getValue() + "}";
    }
}
