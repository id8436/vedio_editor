package com.google.gdata.data.analytics;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GwoExperimentNotes.XML_NAME, nsAlias = AnalyticsNamespace.GWO_ALIAS, nsUri = AnalyticsNamespace.GWO)
public class GwoExperimentNotes extends ValueConstruct {
    static final String XML_NAME = "experimentNotes";

    public GwoExperimentNotes() {
        this(null);
    }

    public GwoExperimentNotes(String str) {
        super(AnalyticsNamespace.GWO_NS, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GwoExperimentNotes.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{GwoExperimentNotes value=" + getValue() + "}";
    }
}
