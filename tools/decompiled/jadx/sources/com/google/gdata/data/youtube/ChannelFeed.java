package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.batch.BatchUtils;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_CHANNEL)
public class ChannelFeed extends BaseFeed<ChannelFeed, ChannelEntry> {
    public ChannelFeed() {
        super(ChannelEntry.class);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_CHANNEL);
    }

    public ChannelFeed(BaseFeed<?, ?> baseFeed) {
        super(ChannelEntry.class, baseFeed);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_CHANNEL);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        BatchUtils.declareExtensions(extensionProfile);
    }
}
