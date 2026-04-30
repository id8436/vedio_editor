package com.google.gdata.data.projecthosting;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "username", nsAlias = ProjectHostingNamespace.ISSUES_ALIAS, nsUri = ProjectHostingNamespace.ISSUES)
public class Username extends ValueConstruct {
    static final String XML_NAME = "username";

    public Username() {
        this(null);
    }

    public Username(String str) {
        super(ProjectHostingNamespace.ISSUES_NS, "username", null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Username.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Username value=" + getValue() + "}";
    }
}
