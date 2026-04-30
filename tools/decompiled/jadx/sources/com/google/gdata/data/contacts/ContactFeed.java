package com.google.gdata.data.contacts;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ContactEntry.KIND)
public class ContactFeed extends BaseFeed<ContactFeed, ContactEntry> {
    public ContactFeed() {
        super(ContactEntry.class);
        getCategories().add(ContactEntry.CATEGORY);
    }

    public ContactFeed(BaseFeed<?, ?> baseFeed) {
        super(ContactEntry.class, baseFeed);
    }

    public String toString() {
        return "{ContactFeed " + super.toString() + "}";
    }
}
