package com.google.gdata.data.contacts;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ContactGroupEntry.KIND)
public class ContactGroupFeed extends BaseFeed<ContactGroupFeed, ContactGroupEntry> {
    public ContactGroupFeed() {
        super(ContactGroupEntry.class);
        getCategories().add(ContactGroupEntry.CATEGORY);
    }

    public ContactGroupFeed(BaseFeed<?, ?> baseFeed) {
        super(ContactGroupEntry.class, baseFeed);
    }

    public String toString() {
        return "{ContactGroupFeed " + super.toString() + "}";
    }
}
