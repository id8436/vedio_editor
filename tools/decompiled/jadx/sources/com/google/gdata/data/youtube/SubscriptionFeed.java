package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.batch.BatchUtils;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_SUBSCRIPTION)
public class SubscriptionFeed extends BaseFeed<SubscriptionFeed, SubscriptionEntry> {
    public SubscriptionFeed() {
        super(SubscriptionEntry.class);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_SUBSCRIPTION);
    }

    public SubscriptionFeed(BaseFeed<?, ?> baseFeed) {
        super(SubscriptionEntry.class, baseFeed);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_SUBSCRIPTION);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        BatchUtils.declareExtensions(extensionProfile);
    }
}
