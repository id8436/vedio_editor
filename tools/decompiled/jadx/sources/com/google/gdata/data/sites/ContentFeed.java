package com.google.gdata.data.sites;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import com.google.gdata.data.media.MediaFeed;

/* JADX INFO: loaded from: classes3.dex */
public class ContentFeed extends MediaFeed<ContentFeed, BaseContentEntry> {
    public ContentFeed() {
        super(ContentEntry.class);
    }

    public ContentFeed(BaseFeed<?, ?> baseFeed) {
        super(ContentEntry.class, baseFeed);
    }

    public Link getEditLink() {
        return getLink(ILink.Rel.ENTRY_EDIT, ILink.Type.ATOM);
    }

    public String toString() {
        return "{ContentFeed " + super.toString() + "}";
    }
}
