package com.google.gdata.data.finance;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(PositionEntry.KIND)
public class PositionFeed extends BaseFeed<PositionFeed, PositionEntry> {
    public PositionFeed() {
        super(PositionEntry.class);
        getCategories().add(PositionEntry.CATEGORY);
    }

    public PositionFeed(BaseFeed<?, ?> baseFeed) {
        super(PositionEntry.class, baseFeed);
    }

    public String toString() {
        return "{PositionFeed " + super.toString() + "}";
    }
}
