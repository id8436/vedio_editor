package com.google.gdata.data.calendar;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;

/* JADX INFO: loaded from: classes3.dex */
public class CalendarFeed extends BaseFeed<CalendarFeed, CalendarEntry> {
    public CalendarFeed() {
        super(CalendarEntry.class);
    }

    public CalendarFeed(BaseFeed<?, ?> baseFeed) {
        super(CalendarEntry.class, baseFeed);
    }

    public Link getFeedLink() {
        return getLink(ILink.Rel.FEED, ILink.Type.ATOM);
    }

    public String toString() {
        return "{CalendarFeed " + super.toString() + "}";
    }
}
