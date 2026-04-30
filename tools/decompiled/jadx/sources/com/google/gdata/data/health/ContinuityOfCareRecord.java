package com.google.gdata.data.health;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = ContinuityOfCareRecord.XML_NAME, nsAlias = HealthNamespace.CCR_ALIAS, nsUri = HealthNamespace.CCR)
public class ContinuityOfCareRecord extends ExtensionPoint {
    static final String XML_NAME = "ContinuityOfCareRecord";

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(ContinuityOfCareRecord.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{ContinuityOfCareRecord}";
    }
}
