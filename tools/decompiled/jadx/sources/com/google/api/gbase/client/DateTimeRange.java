package com.google.api.gbase.client;

import com.google.gdata.data.DateTime;

/* JADX INFO: loaded from: classes3.dex */
public class DateTimeRange {
    private final DateTime end;
    private final DateTime start;

    public DateTimeRange(DateTime dateTime, DateTime dateTime2) {
        assertArgumentNotNull(dateTime, "start");
        assertArgumentNotNull(dateTime2, "end");
        this.start = dateTime;
        this.end = dateTime2;
    }

    public DateTimeRange(DateTime dateTime) {
        this(dateTime, dateTime);
    }

    public boolean isDateTimeOnly() {
        return this.start.equals(this.end);
    }

    public DateTime toDateTime() {
        if (!isDateTimeOnly()) {
            throw new IllegalStateException("This is a valid range, with distinct start and end date. It cannot be converted to one DateTime value. (Check with isDateTimeOnly() first): " + this);
        }
        return this.start;
    }

    private void assertArgumentNotNull(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str + " should not be null");
        }
    }

    public DateTime getStart() {
        return this.start;
    }

    public DateTime getEnd() {
        return this.end;
    }

    public String toString() {
        return this.start + " " + this.end;
    }

    public int hashCode() {
        return (this.start.hashCode() * 37) + this.end.hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DateTimeRange)) {
            return false;
        }
        DateTimeRange dateTimeRange = (DateTimeRange) obj;
        return dateTimeRange.start.equals(this.start) && dateTimeRange.end.equals(this.end);
    }
}
