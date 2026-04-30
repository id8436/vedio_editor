package com.google.gdata.data.contacts;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ProfileEntry.KIND)
public class ProfileEntry extends BasePersonEntry<ProfileEntry> {
    public static final String KIND = "http://schemas.google.com/contact/2008#profile";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public ProfileEntry() {
        getCategories().add(CATEGORY);
    }

    public ProfileEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.contacts.BasePersonEntry
    public String toString() {
        return "{ProfileEntry " + super.toString() + "}";
    }
}
