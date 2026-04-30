package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.batch.BatchUtils;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_FRIEND)
public class FriendFeed extends BaseFeed<FriendFeed, FriendEntry> {
    public FriendFeed() {
        super(FriendEntry.class);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_FRIEND);
    }

    public FriendFeed(BaseFeed<?, ?> baseFeed) {
        super(FriendEntry.class, baseFeed);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_FRIEND);
    }

    public Link getUserProfileLink() {
        return getLink(ILink.Rel.RELATED, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        BatchUtils.declareExtensions(extensionProfile);
    }
}
