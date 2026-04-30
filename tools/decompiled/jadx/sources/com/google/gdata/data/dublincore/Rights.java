package com.google.gdata.data.dublincore;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Rights.XML_NAME, nsAlias = DublincoreNamespace.DC_ALIAS, nsUri = DublincoreNamespace.DC)
public class Rights extends ValueConstruct {
    static final String XML_NAME = "rights";

    public Rights() {
        this(null);
    }

    public Rights(String str) {
        super(DublincoreNamespace.DC_NS, XML_NAME, null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Rights.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Rights value=" + getValue() + "}";
    }
}
