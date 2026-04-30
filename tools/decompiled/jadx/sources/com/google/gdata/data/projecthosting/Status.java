package com.google.gdata.data.projecthosting;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "status", nsAlias = ProjectHostingNamespace.ISSUES_ALIAS, nsUri = ProjectHostingNamespace.ISSUES)
public class Status extends ValueConstruct {
    static final String XML_NAME = "status";

    public Status() {
        this(null);
    }

    public Status(String str) {
        super(ProjectHostingNamespace.ISSUES_NS, "status", null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Status.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Status value=" + getValue() + "}";
    }
}
