package com.google.gdata.data.docs;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(MetadataEntry.KIND)
public class MetadataFeed extends BaseFeed<MetadataFeed, MetadataEntry> {
    public MetadataFeed() {
        super(MetadataEntry.class);
        getCategories().add(MetadataEntry.CATEGORY);
    }

    public MetadataFeed(BaseFeed<?, ?> baseFeed) {
        super(MetadataEntry.class, baseFeed);
    }

    public String toString() {
        return "{MetadataFeed " + super.toString() + "}";
    }
}
