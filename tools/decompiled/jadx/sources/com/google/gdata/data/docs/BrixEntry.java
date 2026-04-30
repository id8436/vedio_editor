package com.google.gdata.data.docs;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(BrixEntry.KIND)
public class BrixEntry extends BaseDocumentListEntry<BrixEntry> {
    public static final String KIND = "http://schemas.google.com/docs/2007#brix";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "brix");

    public BrixEntry() {
        getCategories().add(CATEGORY);
    }

    public BrixEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    public String toString() {
        return "{BrixEntry " + super.toString() + "}";
    }
}
