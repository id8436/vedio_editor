package com.google.gdata.data.extensions;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://schemas.google.com/g/2005#event")
public class EventFeed extends BaseEventFeed<EventFeed, EventEntry> {
    public EventFeed() {
        super(EventEntry.class);
    }

    public EventFeed(BaseFeed<?, ?> baseFeed) {
        super(EventEntry.class, baseFeed);
    }
}
