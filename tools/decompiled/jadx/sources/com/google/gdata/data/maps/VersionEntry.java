package com.google.gdata.data.maps;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(VersionEntry.KIND)
public class VersionEntry extends BaseEntry<VersionEntry> {
    public static final String KIND = "http://schemas.google.com/maps/2008#version";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public VersionEntry() {
        getCategories().add(CATEGORY);
    }

    public VersionEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    public Link getAtomFeedLink() {
        return getLink(ILink.Rel.FEED, ILink.Type.ATOM);
    }

    public String toString() {
        return "{VersionEntry " + super.toString() + "}";
    }
}
