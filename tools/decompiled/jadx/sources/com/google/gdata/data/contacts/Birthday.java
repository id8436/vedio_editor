package com.google.gdata.data.contacts;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Birthday.XML_NAME, nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class Birthday extends ValueConstruct {
    private static final String WHEN = "when";
    static final String XML_NAME = "birthday";

    public Birthday() {
        this(null);
    }

    public Birthday(String str) {
        super(ContactsNamespace.GCONTACT_NS, XML_NAME, WHEN, str);
    }

    public String getWhen() {
        return getValue();
    }

    public void setWhen(String str) {
        setValue(str);
    }

    public boolean hasWhen() {
        return hasValue();
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Birthday.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Birthday when=" + getValue() + "}";
    }
}
