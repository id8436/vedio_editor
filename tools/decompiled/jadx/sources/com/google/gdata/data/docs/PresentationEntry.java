package com.google.gdata.data.docs;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(PresentationEntry.KIND)
public class PresentationEntry extends DocumentListEntry {
    public static final String KIND = "http://schemas.google.com/docs/2007#presentation";
    public static final String LABEL = "presentation";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, LABEL);

    public PresentationEntry() {
        getCategories().remove(DocumentListEntry.CATEGORY);
        getCategories().add(CATEGORY);
    }

    public PresentationEntry(BaseEntry baseEntry) {
        super(baseEntry);
    }
}
