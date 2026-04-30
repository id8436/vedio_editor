package com.google.gdata.data.docs;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(PdfEntry.KIND)
public class PdfEntry extends DocumentListEntry {
    public static final String LABEL = "pdf";
    public static final String KIND = "http://schemas.google.com/docs/2007#pdf";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "pdf");

    public PdfEntry() {
        getCategories().remove(DocumentListEntry.CATEGORY);
        getCategories().add(CATEGORY);
    }

    public PdfEntry(BaseEntry baseEntry) {
        super(baseEntry);
    }
}
