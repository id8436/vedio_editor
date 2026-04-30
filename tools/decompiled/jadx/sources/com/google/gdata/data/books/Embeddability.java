package com.google.gdata.data.books;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Embeddability.XML_NAME, nsAlias = BooksNamespace.GBS_ALIAS, nsUri = BooksNamespace.GBS)
public class Embeddability extends ValueConstruct {
    private static final String VALUE = "value";
    static final String XML_NAME = "embeddability";

    /* JADX INFO: loaded from: classes3.dex */
    public final class Value {
        public static final String EMBEDDABLE = "http://schemas.google.com/books/2008#embeddable";
        public static final String NOT_EMBEDDABLE = "http://schemas.google.com/books/2008#not_embeddable";
    }

    public Embeddability() {
        this(null);
    }

    public Embeddability(String str) {
        super(BooksNamespace.GBS_NS, XML_NAME, VALUE, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Embeddability.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Embeddability value=" + getValue() + "}";
    }
}
