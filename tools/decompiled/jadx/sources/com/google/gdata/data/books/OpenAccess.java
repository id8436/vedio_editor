package com.google.gdata.data.books;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = OpenAccess.XML_NAME, nsAlias = BooksNamespace.GBS_ALIAS, nsUri = BooksNamespace.GBS)
public class OpenAccess extends ValueConstruct {
    private static final String VALUE = "value";
    static final String XML_NAME = "openAccess";

    /* JADX INFO: loaded from: classes3.dex */
    public final class Value {
        public static final String DISABLED = "http://schemas.google.com/books/2008#disabled";
        public static final String ENABLED = "http://schemas.google.com/books/2008#enabled";
    }

    public OpenAccess() {
        this(null);
    }

    public OpenAccess(String str) {
        super(BooksNamespace.GBS_NS, XML_NAME, VALUE, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(OpenAccess.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{OpenAccess value=" + getValue() + "}";
    }
}
