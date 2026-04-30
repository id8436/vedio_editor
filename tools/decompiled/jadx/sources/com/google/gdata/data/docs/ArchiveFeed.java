package com.google.gdata.data.docs;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ArchiveEntry.KIND)
public class ArchiveFeed extends BaseFeed<ArchiveFeed, ArchiveEntry> {
    public ArchiveFeed() {
        super(ArchiveEntry.class);
        getCategories().add(ArchiveEntry.CATEGORY);
    }

    public ArchiveFeed(BaseFeed<?, ?> baseFeed) {
        super(ArchiveEntry.class, baseFeed);
    }

    public String toString() {
        return "{ArchiveFeed " + super.toString() + "}";
    }
}
