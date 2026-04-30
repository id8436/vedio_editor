package com.google.gdata.data.blogger;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;

/* JADX INFO: loaded from: classes3.dex */
public class BlogEntry extends BaseEntry<BlogEntry> {
    public BlogEntry() {
    }

    public BlogEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    public Link getEntryPostLink() {
        return getLink(ILink.Rel.ENTRY_POST, ILink.Type.ATOM);
    }

    public Link getFeedLink() {
        return getLink(ILink.Rel.FEED, ILink.Type.ATOM);
    }

    public Link getRepliesLink() {
        return getLink("replies", ILink.Type.ATOM);
    }

    public String toString() {
        return "{BlogEntry " + super.toString() + "}";
    }
}
