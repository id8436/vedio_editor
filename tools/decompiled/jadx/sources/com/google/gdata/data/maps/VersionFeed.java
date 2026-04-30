package com.google.gdata.data.maps;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(VersionEntry.KIND)
public class VersionFeed extends BaseFeed<VersionFeed, VersionEntry> {
    public VersionFeed() {
        super(VersionEntry.class);
        getCategories().add(VersionEntry.CATEGORY);
    }

    public VersionFeed(BaseFeed<?, ?> baseFeed) {
        super(VersionEntry.class, baseFeed);
    }

    public Link getAtomFeedLink() {
        return getLink(ILink.Rel.FEED, ILink.Type.ATOM);
    }

    public String toString() {
        return "{VersionFeed " + super.toString() + "}";
    }
}
