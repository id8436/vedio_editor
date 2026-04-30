package com.google.gdata.data.extensions;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes.dex */
@Kind.Term(ContactEntry.CONTACT_KIND)
@Deprecated
public class ContactFeed extends BaseFeed<ContactFeed, ContactEntry> {
    public ContactFeed() {
        super(ContactEntry.class);
        getCategories().add(ContactEntry.CONTACT_CATEGORY);
    }

    public ContactFeed(BaseFeed<?, ?> baseFeed) {
        super(ContactEntry.class, baseFeed);
        getCategories().add(ContactEntry.CONTACT_CATEGORY);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
    }
}
