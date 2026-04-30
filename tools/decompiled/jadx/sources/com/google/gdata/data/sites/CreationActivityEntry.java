package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(CreationActivityEntry.KIND)
public class CreationActivityEntry extends BaseActivityEntry<CreationActivityEntry> {
    public static final String KIND = "http://schemas.google.com/sites/2008#creation";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "creation");

    public CreationActivityEntry() {
        getCategories().add(CATEGORY);
    }

    public CreationActivityEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.sites.BaseActivityEntry
    public String toString() {
        return "{CreationActivityEntry " + super.toString() + "}";
    }
}
