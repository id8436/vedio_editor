package com.google.gdata.data.blogger;

import com.google.gdata.data.BaseFeed;

/* JADX INFO: loaded from: classes3.dex */
public class BlogPostFeed extends BaseFeed<BlogPostFeed, PostEntry> {
    public BlogPostFeed() {
        super(PostEntry.class);
    }

    public BlogPostFeed(BaseFeed<?, ?> baseFeed) {
        super(PostEntry.class, baseFeed);
    }

    public String toString() {
        return "{BlogPostFeed " + super.toString() + "}";
    }
}
