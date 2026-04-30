package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(EditActivityEntry.KIND)
public class EditActivityEntry extends BaseActivityEntry<EditActivityEntry> {
    public static final String KIND = "http://schemas.google.com/sites/2008#edit";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, ILink.Rel.ENTRY_EDIT);

    public EditActivityEntry() {
        getCategories().add(CATEGORY);
    }

    public EditActivityEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.sites.BaseActivityEntry
    public String toString() {
        return "{EditActivityEntry " + super.toString() + "}";
    }
}
