package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(DeletionActivityEntry.KIND)
public class DeletionActivityEntry extends BaseActivityEntry<DeletionActivityEntry> {
    public static final String KIND = "http://schemas.google.com/sites/2008#deletion";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "deletion");

    public DeletionActivityEntry() {
        getCategories().add(CATEGORY);
    }

    public DeletionActivityEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.sites.BaseActivityEntry
    public String toString() {
        return "{DeletionActivityEntry " + super.toString() + "}";
    }
}
