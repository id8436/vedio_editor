package com.google.gdata.data.docs;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Filename.XML_NAME, nsAlias = DocsNamespace.DOCS_ALIAS, nsUri = "http://schemas.google.com/docs/2007")
public class Filename extends ValueConstruct {
    static final String XML_NAME = "filename";

    public Filename() {
        this(null);
    }

    public Filename(String str) {
        super(DocsNamespace.DOCS_NS, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Filename.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Filename value=" + getValue() + "}";
    }
}
