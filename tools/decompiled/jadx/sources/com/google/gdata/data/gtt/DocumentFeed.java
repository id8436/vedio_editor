package com.google.gdata.data.gtt;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.media.MediaFeed;

/* JADX INFO: loaded from: classes3.dex */
public class DocumentFeed extends MediaFeed<DocumentFeed, DocumentEntry> {
    public DocumentFeed() {
        super(DocumentEntry.class);
    }

    public DocumentFeed(BaseFeed<?, ?> baseFeed) {
        super(DocumentEntry.class, baseFeed);
    }

    public String toString() {
        return "{DocumentFeed " + super.toString() + "}";
    }
}
