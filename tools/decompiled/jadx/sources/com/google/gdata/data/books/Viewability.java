package com.google.gdata.data.books;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Viewability.XML_NAME, nsAlias = BooksNamespace.GBS_ALIAS, nsUri = BooksNamespace.GBS)
public class Viewability extends ValueConstruct {
    private static final String VALUE = "value";
    static final String XML_NAME = "viewability";

    /* JADX INFO: loaded from: classes3.dex */
    public final class Value {
        public static final String VIEW_ALL_PAGES = "http://schemas.google.com/books/2008#view_all_pages";
        public static final String VIEW_NO_PAGES = "http://schemas.google.com/books/2008#view_no_pages";
        public static final String VIEW_PARTIAL = "http://schemas.google.com/books/2008#view_partial";
        public static final String VIEW_UNKNOWN = "http://schemas.google.com/books/2008#view_unknown";
    }

    public Viewability() {
        this(null);
    }

    public Viewability(String str) {
        super(BooksNamespace.GBS_NS, XML_NAME, VALUE, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Viewability.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Viewability value=" + getValue() + "}";
    }
}
