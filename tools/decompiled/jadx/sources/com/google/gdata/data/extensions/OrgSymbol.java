package com.google.gdata.data.extensions;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;
import com.google.gdata.util.Namespaces;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = OrgSymbol.XML_NAME, nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class OrgSymbol extends ValueConstruct {
    static final String XML_NAME = "orgSymbol";

    public OrgSymbol() {
        this(null);
    }

    public OrgSymbol(String str) {
        super(Namespaces.gNs, XML_NAME, null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(OrgSymbol.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{OrgSymbol value=" + getValue() + "}";
    }
}
