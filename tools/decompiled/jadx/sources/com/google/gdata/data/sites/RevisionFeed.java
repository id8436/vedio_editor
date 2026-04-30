package com.google.gdata.data.sites;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes3.dex */
public class RevisionFeed extends BaseFeed<RevisionFeed, BaseContentEntry> {
    public RevisionFeed() {
        super(ContentEntry.class);
    }

    public RevisionFeed(BaseFeed<?, ?> baseFeed) {
        super(ContentEntry.class, baseFeed);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(RevisionFeed.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(RevisionFeed.class, SitesLink.getDefaultDescription(true, true));
        }
    }

    public String toString() {
        return "{RevisionFeed " + super.toString() + "}";
    }
}
