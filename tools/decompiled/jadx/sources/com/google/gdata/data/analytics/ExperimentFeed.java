package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseFeed;

/* JADX INFO: loaded from: classes3.dex */
public class ExperimentFeed extends BaseFeed<ExperimentFeed, ExperimentEntry> {
    public ExperimentFeed() {
        super(ExperimentEntry.class);
    }

    public ExperimentFeed(BaseFeed<?, ?> baseFeed) {
        super(ExperimentEntry.class, baseFeed);
    }

    public String toString() {
        return "{ExperimentFeed " + super.toString() + "}";
    }
}
