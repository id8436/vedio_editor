package com.google.gdata.data.contacts;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = MaidenName.XML_NAME, nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class MaidenName extends ValueConstruct {
    static final String XML_NAME = "maidenName";

    public MaidenName() {
        this(null);
    }

    public MaidenName(String str) {
        super(ContactsNamespace.GCONTACT_NS, XML_NAME, null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(MaidenName.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{MaidenName value=" + getValue() + "}";
    }
}
