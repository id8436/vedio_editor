package com.google.gdata.data.docs;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(RevisionEntry.KIND)
public class RevisionFeed extends BaseFeed<RevisionFeed, RevisionEntry> {
    public RevisionFeed() {
        super(RevisionEntry.class);
        getCategories().add(RevisionEntry.CATEGORY);
    }
}
