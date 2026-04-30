package com.google.gdata.data.dublincore;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Publisher.XML_NAME, nsAlias = DublincoreNamespace.DC_ALIAS, nsUri = DublincoreNamespace.DC)
public class Publisher extends ValueConstruct {
    static final String XML_NAME = "publisher";

    public Publisher() {
        this(null);
    }

    public Publisher(String str) {
        super(DublincoreNamespace.DC_NS, XML_NAME, null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Publisher.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Publisher value=" + getValue() + "}";
    }
}
