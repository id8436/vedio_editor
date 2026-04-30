package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;

/* JADX INFO: loaded from: classes3.dex */
public class ActivityEntry extends BaseActivityEntry<ActivityEntry> {
    public ActivityEntry() {
    }

    public ActivityEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.sites.BaseActivityEntry
    public String toString() {
        return "{ActivityEntry " + super.toString() + "}";
    }
}
