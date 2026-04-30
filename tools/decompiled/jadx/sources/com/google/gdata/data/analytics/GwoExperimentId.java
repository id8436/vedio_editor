package com.google.gdata.data.analytics;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GwoExperimentId.XML_NAME, nsAlias = AnalyticsNamespace.GWO_ALIAS, nsUri = AnalyticsNamespace.GWO)
public class GwoExperimentId extends ValueConstruct {
    static final String XML_NAME = "experimentId";

    public GwoExperimentId() {
        this(null);
    }

    public GwoExperimentId(String str) {
        super(AnalyticsNamespace.GWO_NS, XML_NAME, null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GwoExperimentId.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{GwoExperimentId value=" + getValue() + "}";
    }
}
