package com.google.gdata.data.blogger;

import com.google.gdata.data.BaseFeed;

/* JADX INFO: loaded from: classes3.dex */
public class PostCommentFeed extends BaseFeed<PostCommentFeed, CommentEntry> {
    public PostCommentFeed() {
        super(CommentEntry.class);
    }

    public PostCommentFeed(BaseFeed<?, ?> baseFeed) {
        super(CommentEntry.class, baseFeed);
    }

    public String toString() {
        return "{PostCommentFeed " + super.toString() + "}";
    }
}
