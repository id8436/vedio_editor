package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseFeed;

/* JADX INFO: loaded from: classes3.dex */
public class ManagementFeed extends BaseFeed<ManagementFeed, ManagementEntry> {
    public ManagementFeed() {
        super(ManagementEntry.class);
    }

    public ManagementFeed(BaseFeed<?, ?> baseFeed) {
        super(ManagementEntry.class, baseFeed);
    }

    public String toString() {
        return "{ManagementFeed " + super.toString() + "}";
    }
}
