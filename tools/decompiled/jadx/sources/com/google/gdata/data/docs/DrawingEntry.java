package com.google.gdata.data.docs;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(DrawingEntry.KIND)
public class DrawingEntry extends DocumentListEntry {
    public static final String KIND = "http://schemas.google.com/docs/2007#drawing";
    public static final String LABEL = "drawing";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, LABEL);

    public DrawingEntry() {
        getCategories().remove(DocumentListEntry.CATEGORY);
        getCategories().add(CATEGORY);
    }

    public DrawingEntry(BaseEntry baseEntry) {
        super(baseEntry);
    }
}
