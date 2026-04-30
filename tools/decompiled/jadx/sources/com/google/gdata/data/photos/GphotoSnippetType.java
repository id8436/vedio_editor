package com.google.gdata.data.photos;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GphotoSnippetType.XML_NAME, nsAlias = Namespaces.PHOTOS_ALIAS, nsUri = Namespaces.PHOTOS)
public class GphotoSnippetType extends ValueConstruct {
    static final String XML_NAME = "snippettype";

    public GphotoSnippetType() {
        this(null);
    }

    public GphotoSnippetType(String str) {
        super(Namespaces.PHOTOS_NAMESPACE, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GphotoSnippetType.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{GphotoSnippetType value=" + getValue() + "}";
    }
}
