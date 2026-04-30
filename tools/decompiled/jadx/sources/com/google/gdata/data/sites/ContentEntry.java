package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;

/* JADX INFO: loaded from: classes3.dex */
public class ContentEntry extends BaseContentEntry<ContentEntry> {
    public ContentEntry() {
    }

    public ContentEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.sites.BaseContentEntry
    public String toString() {
        return "{ContentEntry " + super.toString() + "}";
    }
}
