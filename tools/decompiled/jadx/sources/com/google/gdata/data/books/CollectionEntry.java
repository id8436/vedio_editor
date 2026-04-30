package com.google.gdata.data.books;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(CollectionEntry.KIND)
public class CollectionEntry extends BaseEntry<CollectionEntry> {
    public static final String KIND = "http://schemas.google.com/books/2008#collection";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public CollectionEntry() {
        getCategories().add(CATEGORY);
    }

    public CollectionEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    public String toString() {
        return "{CollectionEntry " + super.toString() + "}";
    }
}
