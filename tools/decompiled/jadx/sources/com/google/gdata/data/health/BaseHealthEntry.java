package com.google.gdata.data.health;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.health.BaseHealthEntry;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseHealthEntry<E extends BaseHealthEntry> extends BaseEntry<E> {
    public BaseHealthEntry() {
    }

    public BaseHealthEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    public String toString() {
        return "{BaseHealthEntry " + super.toString() + "}";
    }
}
