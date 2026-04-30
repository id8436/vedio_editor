package com.google.gdata.data.webmastertools;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(KeywordEntry.KIND)
public class KeywordEntry extends BaseEntry<KeywordEntry> {
    public static final String KIND = "http://schemas.google.com/webmasters/tools/2007#keyword_entry";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public KeywordEntry() {
        getCategories().add(CATEGORY);
    }

    public KeywordEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    public String toString() {
        return "{KeywordEntry " + super.toString() + "}";
    }
}
