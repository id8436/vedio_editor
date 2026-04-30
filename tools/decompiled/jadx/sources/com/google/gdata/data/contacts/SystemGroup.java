package com.google.gdata.data.contacts;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = SystemGroup.XML_NAME, nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class SystemGroup extends ValueConstruct {
    private static final String ID = "id";
    static final String XML_NAME = "systemGroup";

    public SystemGroup() {
        this(null);
    }

    public SystemGroup(String str) {
        super(ContactsNamespace.GCONTACT_NS, XML_NAME, "id", str);
    }

    public String getId() {
        return getValue();
    }

    public void setId(String str) {
        setValue(str);
    }

    public boolean hasId() {
        return hasValue();
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(SystemGroup.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{SystemGroup id=" + getValue() + "}";
    }
}
