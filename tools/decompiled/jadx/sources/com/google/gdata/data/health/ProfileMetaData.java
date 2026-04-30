package com.google.gdata.data.health;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = ProfileMetaData.XML_NAME, nsAlias = HealthNamespace.H9M_ALIAS, nsUri = HealthNamespace.H9M)
public class ProfileMetaData extends ExtensionPoint {
    static final String XML_NAME = "ProfileMetaData";

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(ProfileMetaData.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{ProfileMetaData}";
    }
}
