package com.google.gdata.data.appsforyourdomain.provisioning;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://schemas.google.com/apps/2006#emailList.recipient")
public class EmailListRecipientFeed extends BaseFeed<EmailListRecipientFeed, EmailListRecipientEntry> {
    public EmailListRecipientFeed() {
        super(EmailListRecipientEntry.class);
        getCategories().add(EmailListRecipientEntry.EMAILLIST_RECIPIENT_CATEGORY);
    }

    public EmailListRecipientFeed(BaseFeed baseFeed) {
        super(EmailListRecipientEntry.class, baseFeed);
        getCategories().add(EmailListRecipientEntry.EMAILLIST_RECIPIENT_CATEGORY);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
    }
}
