package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_COMPLAINT)
public class ComplaintFeed extends BaseFeed<ComplaintFeed, ComplaintEntry> {
    public ComplaintFeed() {
        super(ComplaintEntry.class);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_COMPLAINT);
    }

    public ComplaintFeed(BaseFeed<?, ?> baseFeed) {
        super(ComplaintEntry.class, baseFeed);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_COMPLAINT);
    }
}
