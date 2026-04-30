package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseFeed;

/* JADX INFO: loaded from: classes3.dex */
public class CombinationFeed extends BaseFeed<CombinationFeed, CombinationEntry> {
    public CombinationFeed() {
        super(CombinationEntry.class);
    }

    public CombinationFeed(BaseFeed<?, ?> baseFeed) {
        super(CombinationEntry.class, baseFeed);
    }

    public String toString() {
        return "{CombinationFeed " + super.toString() + "}";
    }
}
