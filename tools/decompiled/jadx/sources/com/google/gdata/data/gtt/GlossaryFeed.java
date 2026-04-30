package com.google.gdata.data.gtt;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.media.MediaFeed;

/* JADX INFO: loaded from: classes3.dex */
public class GlossaryFeed extends MediaFeed<GlossaryFeed, GlossaryEntry> {
    public GlossaryFeed() {
        super(GlossaryEntry.class);
    }

    public GlossaryFeed(BaseFeed<?, ?> baseFeed) {
        super(GlossaryEntry.class, baseFeed);
    }

    public String toString() {
        return "{GlossaryFeed " + super.toString() + "}";
    }
}
