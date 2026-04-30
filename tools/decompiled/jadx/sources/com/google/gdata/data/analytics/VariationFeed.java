package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseFeed;

/* JADX INFO: loaded from: classes3.dex */
public class VariationFeed extends BaseFeed<VariationFeed, VariationEntry> {
    public VariationFeed() {
        super(VariationEntry.class);
    }

    public VariationFeed(BaseFeed<?, ?> baseFeed) {
        super(VariationEntry.class, baseFeed);
    }

    public String toString() {
        return "{VariationFeed " + super.toString() + "}";
    }
}
