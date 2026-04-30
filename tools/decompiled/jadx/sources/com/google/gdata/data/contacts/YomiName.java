package com.google.gdata.data.contacts;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = YomiName.XML_NAME, nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class YomiName extends ValueConstruct {
    static final String XML_NAME = "yomiName";

    public YomiName() {
        this(null);
    }

    public YomiName(String str) {
        super(ContactsNamespace.GCONTACT_NS, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(YomiName.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{YomiName value=" + getValue() + "}";
    }
}
