package com.google.gdata.data.appsforyourdomain.migration;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(MailItemEntry.MAILITEM_KIND)
public class MailItemFeed extends BaseFeed<MailItemFeed, MailItemEntry> {
    public MailItemFeed() {
        super(MailItemEntry.class);
        getCategories().add(MailItemEntry.MAILITEM_CATEGORY);
    }

    public MailItemFeed(BaseFeed<?, ?> baseFeed) {
        super(MailItemEntry.class, baseFeed);
        getCategories().add(MailItemEntry.MAILITEM_CATEGORY);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
    }
}
