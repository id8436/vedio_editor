package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseFeed;

/* JADX INFO: loaded from: classes3.dex */
public class AbPageVariationFeed extends BaseFeed<AbPageVariationFeed, AbPageVariationEntry> {
    public AbPageVariationFeed() {
        super(AbPageVariationEntry.class);
    }

    public AbPageVariationFeed(BaseFeed<?, ?> baseFeed) {
        super(AbPageVariationEntry.class, baseFeed);
    }

    public String toString() {
        return "{AbPageVariationFeed " + super.toString() + "}";
    }
}
