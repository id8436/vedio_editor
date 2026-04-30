package com.google.gdata.data.contacts;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "occupation", nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class Occupation extends ValueConstruct {
    static final String XML_NAME = "occupation";

    public Occupation() {
        this(null);
    }

    public Occupation(String str) {
        super(ContactsNamespace.GCONTACT_NS, "occupation", null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Occupation.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Occupation value=" + getValue() + "}";
    }
}
