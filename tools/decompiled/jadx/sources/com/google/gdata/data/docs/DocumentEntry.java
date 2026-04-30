package com.google.gdata.data.docs;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(DocumentEntry.KIND)
public class DocumentEntry extends DocumentListEntry {
    public static final String KIND = "http://schemas.google.com/docs/2007#document";
    public static final String LABEL = "document";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, LABEL);

    public DocumentEntry() {
        getCategories().remove(DocumentListEntry.CATEGORY);
        getCategories().add(CATEGORY);
    }

    public DocumentEntry(BaseEntry baseEntry) {
        super(baseEntry);
    }
}
