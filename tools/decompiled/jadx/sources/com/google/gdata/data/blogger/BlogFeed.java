package com.google.gdata.data.blogger;

import com.google.gdata.data.BaseFeed;

/* JADX INFO: loaded from: classes3.dex */
public class BlogFeed extends BaseFeed<BlogFeed, BlogEntry> {
    public BlogFeed() {
        super(BlogEntry.class);
    }

    public BlogFeed(BaseFeed<?, ?> baseFeed) {
        super(BlogEntry.class, baseFeed);
    }

    public String toString() {
        return "{BlogFeed " + super.toString() + "}";
    }
}
