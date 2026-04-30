package com.google.gdata.data.appsforyourdomain.provisioning;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(UserEntry.USER_KIND)
public class UserFeed extends BaseFeed<UserFeed, UserEntry> {
    public UserFeed() {
        super(UserEntry.class);
        getCategories().add(UserEntry.USER_CATEGORY);
    }

    public UserFeed(BaseFeed baseFeed) {
        super(UserEntry.class, baseFeed);
        getCategories().add(UserEntry.USER_CATEGORY);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
    }
}
