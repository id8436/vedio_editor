package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(RecordEntry.KIND)
public class RecordFeed extends BaseFeed<RecordFeed, RecordEntry> {
    public RecordFeed() {
        super(RecordEntry.class);
        getCategories().add(RecordEntry.CATEGORY);
    }

    public RecordFeed(BaseFeed<?, ?> baseFeed) {
        super(RecordEntry.class, baseFeed);
    }

    public String toString() {
        return "{RecordFeed " + super.toString() + "}";
    }
}
