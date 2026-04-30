package com.google.gdata.data.sites;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes3.dex */
public class ActivityFeed extends BaseFeed<ActivityFeed, BaseActivityEntry> {
    public ActivityFeed() {
        super(ActivityEntry.class);
    }

    public ActivityFeed(BaseFeed<?, ?> baseFeed) {
        super(ActivityEntry.class, baseFeed);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(ActivityFeed.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(ActivityFeed.class, SitesLink.getDefaultDescription(true, true));
        }
    }

    public String toString() {
        return "{ActivityFeed " + super.toString() + "}";
    }
}
