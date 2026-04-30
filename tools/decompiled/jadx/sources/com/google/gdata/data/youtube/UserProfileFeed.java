package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_USER_PROFILE)
public class UserProfileFeed extends BaseFeed<UserProfileFeed, UserProfileEntry> {
    public UserProfileFeed() {
        super(UserProfileEntry.class);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_USER_PROFILE);
    }

    public UserProfileFeed(BaseFeed<?, ?> baseFeed) {
        super(UserProfileEntry.class, baseFeed);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_USER_PROFILE);
    }
}
