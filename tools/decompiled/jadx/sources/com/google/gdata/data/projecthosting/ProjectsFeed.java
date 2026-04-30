package com.google.gdata.data.projecthosting;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;

/* JADX INFO: loaded from: classes3.dex */
public class ProjectsFeed extends BaseFeed<ProjectsFeed, ProjectSummaryEntry> {
    public ProjectsFeed() {
        super(ProjectSummaryEntry.class);
    }

    public ProjectsFeed(BaseFeed<?, ?> baseFeed) {
        super(ProjectSummaryEntry.class, baseFeed);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(ProjectsFeed.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(ProjectsFeed.class, IssuesLink.getDefaultDescription(true, true));
        }
    }

    public Link getFeedLink() {
        return getLink(ILink.Rel.FEED, ILink.Type.ATOM);
    }

    public String toString() {
        return "{ProjectsFeed " + super.toString() + "}";
    }
}
