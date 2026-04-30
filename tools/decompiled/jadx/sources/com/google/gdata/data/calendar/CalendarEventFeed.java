package com.google.gdata.data.calendar;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.extensions.BaseEventFeed;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public class CalendarEventFeed extends BaseEventFeed<CalendarEventFeed, CalendarEventEntry> {
    public CalendarEventFeed() {
        super(CalendarEventEntry.class);
    }

    public CalendarEventFeed(BaseFeed<?, ?> baseFeed) {
        super(CalendarEventEntry.class, baseFeed);
    }

    @Override // com.google.gdata.data.extensions.BaseEventFeed, com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(CalendarEventFeed.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(CalendarEventFeed.class, new ExtensionDescription(TimeZoneProperty.class, new XmlNamespace(Namespaces.gCalAlias, Namespaces.gCal), "timezone", true, false, false));
            extensionProfile.declare(CalendarEventFeed.class, TimesCleanedProperty.class);
        }
    }

    public TimeZoneProperty getTimeZone() {
        return (TimeZoneProperty) getExtension(TimeZoneProperty.class);
    }

    public void setTimeZone(TimeZoneProperty timeZoneProperty) {
        if (timeZoneProperty == null) {
            removeExtension(TimeZoneProperty.class);
        } else {
            setExtension(timeZoneProperty);
        }
    }

    public boolean hasTimeZone() {
        return hasExtension(TimeZoneProperty.class);
    }

    public TimesCleanedProperty getTimesCleaned() {
        return (TimesCleanedProperty) getExtension(TimesCleanedProperty.class);
    }

    public void setTimesCleaned(TimesCleanedProperty timesCleanedProperty) {
        if (timesCleanedProperty == null) {
            removeExtension(TimesCleanedProperty.class);
        } else {
            setExtension(timesCleanedProperty);
        }
    }

    public boolean hasTimesCleaned() {
        return hasExtension(TimesCleanedProperty.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{CalendarEventFeed " + super.toString() + "}";
    }
}
