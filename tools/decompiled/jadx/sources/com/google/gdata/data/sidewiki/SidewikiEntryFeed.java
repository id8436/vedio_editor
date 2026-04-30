package com.google.gdata.data.sidewiki;

import com.google.gdata.data.BaseFeed;

/* JADX INFO: loaded from: classes3.dex */
public class SidewikiEntryFeed extends BaseFeed<SidewikiEntryFeed, SidewikiEntry> {
    public SidewikiEntryFeed() {
        super(SidewikiEntry.class);
        setKind("sidewiki#sidewikiEntryFeed");
    }

    public SidewikiEntryFeed(BaseFeed<?, ?> baseFeed) {
        super(SidewikiEntry.class, baseFeed);
    }

    public String toString() {
        return "{SidewikiEntryFeed " + super.toString() + "}";
    }
}
