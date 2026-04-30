package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "*", nsAlias = Namespaces.gSpreadCustomAlias, nsUri = Namespaces.gSpreadCustom)
public class RecordValue extends ValueConstruct {
    static final String XML_NAME = "*";

    public RecordValue() {
        this(null);
    }

    public RecordValue(String str) {
        super(Namespaces.gSpreadCustomNs, "*", null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(RecordValue.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{RecordValue value=" + getValue() + "}";
    }
}
