package com.google.gdata.data.gtt;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.media.MediaFeed;

/* JADX INFO: loaded from: classes3.dex */
public class TranslationMemoryFeed extends MediaFeed<TranslationMemoryFeed, TranslationMemoryEntry> {
    public TranslationMemoryFeed() {
        super(TranslationMemoryEntry.class);
    }

    public TranslationMemoryFeed(BaseFeed<?, ?> baseFeed) {
        super(TranslationMemoryEntry.class, baseFeed);
    }

    public String toString() {
        return "{TranslationMemoryFeed " + super.toString() + "}";
    }
}
