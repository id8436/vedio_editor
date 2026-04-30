package com.google.gdata.data.appsforyourdomain.provisioning;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(EmailListEntry.EMAIL_LIST_KIND)
public class EmailListFeed extends BaseFeed<EmailListFeed, EmailListEntry> {
    public EmailListFeed() {
        super(EmailListEntry.class);
        getCategories().add(EmailListEntry.EMAIL_LIST_CATEGORY);
    }

    public EmailListFeed(BaseFeed<?, ?> baseFeed) {
        super(EmailListEntry.class, baseFeed);
        getCategories().add(EmailListEntry.EMAIL_LIST_CATEGORY);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
    }
}
