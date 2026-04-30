package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;

/* JADX INFO: loaded from: classes3.dex */
public class PageEntry extends BasePageEntry<PageEntry> {
    public PageEntry() {
    }

    public PageEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.sites.BasePageEntry, com.google.gdata.data.sites.BaseContentEntry
    public String toString() {
        return "{PageEntry " + super.toString() + "}";
    }
}
