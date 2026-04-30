package com.google.gdata.data.blogger;

import com.google.gdata.data.BaseFeed;

/* JADX INFO: loaded from: classes3.dex */
public class BlogCommentFeed extends BaseFeed<BlogCommentFeed, CommentEntry> {
    public BlogCommentFeed() {
        super(CommentEntry.class);
    }

    public BlogCommentFeed(BaseFeed<?, ?> baseFeed) {
        super(CommentEntry.class, baseFeed);
    }

    public String toString() {
        return "{BlogCommentFeed " + super.toString() + "}";
    }
}
