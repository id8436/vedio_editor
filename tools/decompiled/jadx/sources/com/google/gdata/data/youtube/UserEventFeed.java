package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.batch.BatchUtils;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_USER_EVENT)
public class UserEventFeed extends BaseFeed<UserEventFeed, UserEventEntry> {
    public UserEventFeed() {
        super(UserEventEntry.class);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_USER_EVENT);
    }

    public UserEventFeed(BaseFeed<?, ?> baseFeed) {
        super(UserEventEntry.class, baseFeed);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_USER_EVENT);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        BatchUtils.declareExtensions(extensionProfile);
    }
}
