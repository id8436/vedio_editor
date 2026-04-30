package com.google.gdata.data.health;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(RegisterEntry.KIND)
public class RegisterEntry extends BaseHealthEntry<RegisterEntry> {
    public static final String KIND = "http://schemas.google.com/health/kinds#register";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public RegisterEntry() {
        getCategories().add(CATEGORY);
    }

    public RegisterEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.health.BaseHealthEntry
    public String toString() {
        return "{RegisterEntry " + super.toString() + "}";
    }
}
