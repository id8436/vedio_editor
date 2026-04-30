package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_RATING)
public class RatingFeed extends BaseFeed<RatingFeed, RatingEntry> {
    public RatingFeed() {
        super(RatingEntry.class);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_RATING);
    }

    public RatingFeed(BaseFeed baseFeed) {
        super(RatingEntry.class, baseFeed);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_RATING);
    }
}
