package com.google.gdata.data.dublincore;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Identifier.XML_NAME, nsAlias = DublincoreNamespace.DC_ALIAS, nsUri = DublincoreNamespace.DC)
public class Identifier extends ValueConstruct {
    static final String XML_NAME = "identifier";

    public Identifier() {
        this(null);
    }

    public Identifier(String str) {
        super(DublincoreNamespace.DC_NS, XML_NAME, null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Identifier.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Identifier value=" + getValue() + "}";
    }
}
