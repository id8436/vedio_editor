package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseFeed;

/* JADX INFO: loaded from: classes3.dex */
public class SectionFeed extends BaseFeed<SectionFeed, SectionEntry> {
    public SectionFeed() {
        super(SectionEntry.class);
    }

    public SectionFeed(BaseFeed<?, ?> baseFeed) {
        super(SectionEntry.class, baseFeed);
    }

    public String toString() {
        return "{SectionFeed " + super.toString() + "}";
    }
}
