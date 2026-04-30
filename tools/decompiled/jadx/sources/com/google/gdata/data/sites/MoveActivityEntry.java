package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(MoveActivityEntry.KIND)
public class MoveActivityEntry extends BaseActivityEntry<MoveActivityEntry> {
    public static final String KIND = "http://schemas.google.com/sites/2008#move";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "move");

    public MoveActivityEntry() {
        getCategories().add(CATEGORY);
    }

    public MoveActivityEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.sites.BaseActivityEntry
    public String toString() {
        return "{MoveActivityEntry " + super.toString() + "}";
    }
}
