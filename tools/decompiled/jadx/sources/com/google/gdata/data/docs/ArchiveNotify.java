package com.google.gdata.data.docs;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = ArchiveNotify.XML_NAME, nsAlias = DocsNamespace.DOCS_ALIAS, nsUri = "http://schemas.google.com/docs/2007")
public class ArchiveNotify extends ValueConstruct {
    static final String XML_NAME = "archiveNotify";

    public ArchiveNotify() {
        this(null);
    }

    public ArchiveNotify(String str) {
        super(DocsNamespace.DOCS_NS, XML_NAME, null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(ArchiveNotify.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{ArchiveNotify value=" + getValue() + "}";
    }
}
