package com.google.gdata.data.docs;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Removed.XML_NAME, nsAlias = DocsNamespace.DOCS_ALIAS, nsUri = "http://schemas.google.com/docs/2007")
public class Removed extends ExtensionPoint {
    static final String XML_NAME = "removed";

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Removed.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Removed}";
    }
}
