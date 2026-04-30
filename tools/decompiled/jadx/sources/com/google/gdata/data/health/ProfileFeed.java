package com.google.gdata.data.health;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ProfileEntry.KIND)
public class ProfileFeed extends BaseHealthFeed<ProfileFeed, ProfileEntry> {
    public ProfileFeed() {
        super(ProfileEntry.class);
        getCategories().add(ProfileEntry.CATEGORY);
    }

    public ProfileFeed(BaseFeed<?, ?> baseFeed) {
        super(ProfileEntry.class, baseFeed);
    }

    public Link getEditLink() {
        return getLink(ILink.Rel.ENTRY_EDIT, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.health.BaseHealthFeed
    public String toString() {
        return "{ProfileFeed " + super.toString() + "}";
    }
}
