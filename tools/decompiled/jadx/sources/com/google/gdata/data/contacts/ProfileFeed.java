package com.google.gdata.data.contacts;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ProfileEntry.KIND)
public class ProfileFeed extends BaseFeed<ProfileFeed, ProfileEntry> {
    public ProfileFeed() {
        super(ProfileEntry.class);
        getCategories().add(ProfileEntry.CATEGORY);
    }

    public ProfileFeed(BaseFeed<?, ?> baseFeed) {
        super(ProfileEntry.class, baseFeed);
    }

    public String toString() {
        return "{ProfileFeed " + super.toString() + "}";
    }
}
