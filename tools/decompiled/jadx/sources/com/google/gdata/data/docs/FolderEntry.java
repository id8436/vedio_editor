package com.google.gdata.data.docs;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(FolderEntry.KIND)
public class FolderEntry extends DocumentListEntry {
    public static final String LABEL = "folder";
    public static final String KIND = "http://schemas.google.com/docs/2007#folder";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "folder");

    public FolderEntry() {
        getCategories().remove(DocumentListEntry.CATEGORY);
        getCategories().add(CATEGORY);
    }

    public FolderEntry(BaseEntry<FolderEntry> baseEntry) {
        super(baseEntry);
    }
}
