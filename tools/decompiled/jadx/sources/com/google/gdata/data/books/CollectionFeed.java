package com.google.gdata.data.books;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(CollectionEntry.KIND)
public class CollectionFeed extends BaseFeed<CollectionFeed, CollectionEntry> {
    public CollectionFeed() {
        super(CollectionEntry.class);
        getCategories().add(CollectionEntry.CATEGORY);
    }

    public CollectionFeed(BaseFeed<?, ?> baseFeed) {
        super(CollectionEntry.class, baseFeed);
    }

    public String toString() {
        return "{CollectionFeed " + super.toString() + "}";
    }
}
