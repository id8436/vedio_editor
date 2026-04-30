package com.google.gdata.data.docs;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.acl.AclFeed;
import com.google.gdata.data.extensions.FeedLink;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(isRepeatable = true, localName = "feedLink", nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class DocumentListAclFeedLink extends FeedLink<AclFeed> {
    public DocumentListAclFeedLink() {
        super(AclFeed.class);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        ExtensionProfile extensionProfile2 = new ExtensionProfile();
        new AclFeed().declareExtensions(extensionProfile2);
        extensionProfile.declareFeedLinkProfile(extensionProfile2);
    }
}
