package com.google.gdata.data.books;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(VolumeEntry.KIND)
public class VolumeFeed extends BaseFeed<VolumeFeed, VolumeEntry> {
    public VolumeFeed() {
        super(VolumeEntry.class);
        getCategories().add(VolumeEntry.CATEGORY);
    }

    public VolumeFeed(BaseFeed<?, ?> baseFeed) {
        super(VolumeEntry.class, baseFeed);
    }

    public Link getAtomAlternateLink() {
        return getLink("alternate", ILink.Type.ATOM);
    }

    public String toString() {
        return "{VolumeFeed " + super.toString() + "}";
    }
}
