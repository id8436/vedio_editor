package com.google.gdata.data.sidewiki;

import com.google.gdata.data.BaseFeed;

/* JADX INFO: loaded from: classes3.dex */
public class SidewikiUserFeed extends BaseFeed<SidewikiUserFeed, SidewikiUserEntry> {
    public SidewikiUserFeed() {
        super(SidewikiUserEntry.class);
        setKind("sidewiki#sidewikiUserFeed");
    }

    public SidewikiUserFeed(BaseFeed<?, ?> baseFeed) {
        super(SidewikiUserEntry.class, baseFeed);
    }

    public String toString() {
        return "{SidewikiUserFeed " + super.toString() + "}";
    }
}
