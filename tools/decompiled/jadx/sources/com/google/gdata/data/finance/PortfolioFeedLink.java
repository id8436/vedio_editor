package com.google.gdata.data.finance;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.extensions.FeedLink;

/* JADX INFO: loaded from: classes3.dex */
public class PortfolioFeedLink extends FeedLink<PositionFeed> {
    public PortfolioFeedLink() {
        super(PositionFeed.class);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(PortfolioFeedLink.class)) {
            super.declareExtensions(extensionProfile);
            ExtensionProfile feedLinkProfile = extensionProfile.getFeedLinkProfile();
            if (feedLinkProfile == null) {
                feedLinkProfile = new ExtensionProfile();
                extensionProfile.declareFeedLinkProfile(feedLinkProfile);
            }
            new PositionFeed().declareExtensions(feedLinkProfile);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(PortfolioFeedLink.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{PortfolioFeedLink " + super.toString() + "}";
    }
}
