package com.google.gdata.data.health;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.health.BaseHealthEntry;
import com.google.gdata.data.health.BaseHealthFeed;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseHealthFeed<F extends BaseHealthFeed, E extends BaseHealthEntry> extends BaseFeed<F, E> {
    public BaseHealthFeed(Class<E> cls) {
        super(cls);
    }

    public BaseHealthFeed(Class<E> cls, BaseFeed<?, ?> baseFeed) {
        super(cls, baseFeed);
    }

    public String toString() {
        return "{BaseHealthFeed " + super.toString() + "}";
    }
}
