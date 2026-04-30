package com.google.gdata.data.docs;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(FileEntry.KIND)
public class FileEntry extends DocumentListEntry {
    public static final String LABEL = "file";
    public static final String KIND = "http://schemas.google.com/docs/2007#file";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "file");

    public FileEntry() {
        getCategories().remove(DocumentListEntry.CATEGORY);
        getCategories().add(CATEGORY);
    }

    public FileEntry(BaseEntry baseEntry) {
        super(baseEntry);
    }
}
