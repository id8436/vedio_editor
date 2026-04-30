package com.google.gdata.data.projecthosting;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = OwnerUpdate.XML_NAME, nsAlias = ProjectHostingNamespace.ISSUES_ALIAS, nsUri = ProjectHostingNamespace.ISSUES)
public class OwnerUpdate extends ValueConstruct {
    static final String XML_NAME = "ownerUpdate";

    public OwnerUpdate() {
        this(null);
    }

    public OwnerUpdate(String str) {
        super(ProjectHostingNamespace.ISSUES_NS, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(OwnerUpdate.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{OwnerUpdate value=" + getValue() + "}";
    }
}
