package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.batch.BatchUtils;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_PLAYLIST_LINK)
public class PlaylistLinkFeed extends BaseFeed<PlaylistLinkFeed, PlaylistLinkEntry> {
    public PlaylistLinkFeed() {
        super(PlaylistLinkEntry.class);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_PLAYLIST_LINK);
    }

    public PlaylistLinkFeed(BaseFeed<?, ?> baseFeed) {
        super(PlaylistLinkEntry.class, baseFeed);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_PLAYLIST_LINK);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        BatchUtils.declareExtensions(extensionProfile);
    }
}
