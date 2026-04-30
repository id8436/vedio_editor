package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(RecoveryActivityEntry.KIND)
public class RecoveryActivityEntry extends BaseActivityEntry<RecoveryActivityEntry> {
    public static final String KIND = "http://schemas.google.com/sites/2008#recovery";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "recovery");

    public RecoveryActivityEntry() {
        getCategories().add(CATEGORY);
    }

    public RecoveryActivityEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.sites.BaseActivityEntry
    public String toString() {
        return "{RecoveryActivityEntry " + super.toString() + "}";
    }
}
