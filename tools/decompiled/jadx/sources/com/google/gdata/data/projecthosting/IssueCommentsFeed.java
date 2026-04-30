package com.google.gdata.data.projecthosting;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes3.dex */
public class IssueCommentsFeed extends BaseFeed<IssueCommentsFeed, IssueCommentsEntry> {
    public IssueCommentsFeed() {
        super(IssueCommentsEntry.class);
    }

    public IssueCommentsFeed(BaseFeed<?, ?> baseFeed) {
        super(IssueCommentsEntry.class, baseFeed);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(IssueCommentsFeed.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(IssueCommentsFeed.class, IssuesLink.getDefaultDescription(true, true));
        }
    }

    public String toString() {
        return "{IssueCommentsFeed " + super.toString() + "}";
    }
}
