package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Worksheet.XML_NAME, nsAlias = Namespaces.gSpreadAlias, nsUri = Namespaces.gSpread)
public class Worksheet extends ValueConstruct {
    private static final String NAME = "name";
    static final String XML_NAME = "worksheet";

    public Worksheet() {
        this(null);
    }

    public Worksheet(String str) {
        super(Namespaces.gSpreadNs, XML_NAME, "name", str);
    }

    public String getName() {
        return getValue();
    }

    public void setName(String str) {
        setValue(str);
    }

    public boolean hasName() {
        return hasValue();
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Worksheet.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Worksheet name=" + getValue() + "}";
    }
}
