package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.batch.BatchUtils;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_COMMENT)
public class CommentFeed extends BaseFeed<CommentFeed, CommentEntry> {
    public CommentFeed() {
        super(CommentEntry.class);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_COMMENT);
    }

    public CommentFeed(BaseFeed<?, ?> baseFeed) {
        super(CommentEntry.class, baseFeed);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_COMMENT);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        BatchUtils.declareExtensions(extensionProfile);
    }
}
