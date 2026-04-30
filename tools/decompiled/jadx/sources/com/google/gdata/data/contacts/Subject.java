package com.google.gdata.data.contacts;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Subject.XML_NAME, nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class Subject extends ValueConstruct {
    static final String XML_NAME = "subject";

    public Subject() {
        this(null);
    }

    public Subject(String str) {
        super(ContactsNamespace.GCONTACT_NS, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Subject.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Subject value=" + getValue() + "}";
    }
}
