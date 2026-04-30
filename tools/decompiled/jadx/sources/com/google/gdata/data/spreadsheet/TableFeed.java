package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(TableEntry.KIND)
public class TableFeed extends BaseFeed<TableFeed, TableEntry> {
    public TableFeed() {
        super(TableEntry.class);
        getCategories().add(TableEntry.CATEGORY);
    }

    public TableFeed(BaseFeed<?, ?> baseFeed) {
        super(TableEntry.class, baseFeed);
    }

    public String toString() {
        return "{TableFeed " + super.toString() + "}";
    }
}
