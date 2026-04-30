package com.google.gdata.data.gtt;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import com.google.gdata.data.media.MediaEntry;

/* JADX INFO: loaded from: classes3.dex */
public class GlossaryEntry extends MediaEntry<GlossaryEntry> {
    public GlossaryEntry() {
    }

    public GlossaryEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    public Link getAccessControlListLink() {
        return getLink("http://schemas.google.com/acl/2007#accessControlList", ILink.Type.ATOM);
    }

    public String toString() {
        return "{GlossaryEntry " + super.toString() + "}";
    }
}
