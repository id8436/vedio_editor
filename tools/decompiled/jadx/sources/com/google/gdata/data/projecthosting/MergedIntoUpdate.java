package com.google.gdata.data.projecthosting;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = MergedIntoUpdate.XML_NAME, nsAlias = ProjectHostingNamespace.ISSUES_ALIAS, nsUri = ProjectHostingNamespace.ISSUES)
public class MergedIntoUpdate extends ValueConstruct {
    static final String XML_NAME = "mergedIntoUpdate";

    public MergedIntoUpdate() {
        this(null);
    }

    public MergedIntoUpdate(String str) {
        super(ProjectHostingNamespace.ISSUES_NS, XML_NAME, null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(MergedIntoUpdate.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{MergedIntoUpdate value=" + getValue() + "}";
    }
}
