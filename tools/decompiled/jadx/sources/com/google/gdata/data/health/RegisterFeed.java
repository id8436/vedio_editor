package com.google.gdata.data.health;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(RegisterEntry.KIND)
public class RegisterFeed extends BaseHealthFeed<RegisterFeed, RegisterEntry> {
    public RegisterFeed() {
        super(RegisterEntry.class);
        getCategories().add(RegisterEntry.CATEGORY);
    }

    public RegisterFeed(BaseFeed<?, ?> baseFeed) {
        super(RegisterEntry.class, baseFeed);
    }

    public Link getEditLink() {
        return getLink(ILink.Rel.ENTRY_EDIT, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.health.BaseHealthFeed
    public String toString() {
        return "{RegisterFeed " + super.toString() + "}";
    }
}
