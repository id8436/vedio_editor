package com.google.gdata.data.sites;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import com.google.gdata.data.extensions.FeedLink;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public class SiteFeed extends BaseFeed<SiteFeed, SiteEntry> {
    public SiteFeed() {
        super(SiteEntry.class);
    }

    public SiteFeed(BaseFeed<?, ?> baseFeed) {
        super(SiteEntry.class, baseFeed);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(SiteFeed.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(SiteFeed.class, new ExtensionDescription(FeedLink.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "feedLink", true, false, false));
            new FeedLink().declareExtensions(extensionProfile);
            extensionProfile.declare(SiteFeed.class, SitesLink.getDefaultDescription(true, true));
        }
    }

    public FeedLink getFeedLink() {
        return (FeedLink) getExtension(FeedLink.class);
    }

    public void setFeedLink(FeedLink feedLink) {
        if (feedLink == null) {
            removeExtension(FeedLink.class);
        } else {
            setExtension(feedLink);
        }
    }

    public boolean hasFeedLink() {
        return hasExtension(FeedLink.class);
    }

    public Link getEditLink() {
        return getLink(ILink.Rel.ENTRY_EDIT, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{SiteFeed " + super.toString() + "}";
    }
}
