package com.google.gdata.data.maps;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.media.MediaFeed;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(MapEntry.KIND)
public class MapFeed extends MediaFeed<MapFeed, MapEntry> {
    public MapFeed() {
        super(MapEntry.class);
        getCategories().add(MapEntry.CATEGORY);
    }

    public MapFeed(BaseFeed<?, ?> baseFeed) {
        super(MapEntry.class, baseFeed);
    }

    public Link getAtomFeedLink() {
        return getLink(ILink.Rel.FEED, ILink.Type.ATOM);
    }

    public String toString() {
        return "{MapFeed " + super.toString() + "}";
    }
}
