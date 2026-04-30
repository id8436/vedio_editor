package com.google.gdata.data.calendar;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.extensions.When;
import com.google.gdata.data.extensions.Where;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CalendarEntry extends BaseEntry<CalendarEntry> {
    public CalendarEntry() {
    }

    public CalendarEntry(BaseEntry baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(CalendarEntry.class, AccessLevelProperty.getDefaultDescription());
        extensionProfile.declare(CalendarEntry.class, ColorProperty.getDefaultDescription());
        extensionProfile.declare(CalendarEntry.class, HiddenProperty.getDefaultDescription());
        extensionProfile.declare(CalendarEntry.class, OverrideNameProperty.getDefaultDescription());
        extensionProfile.declare(CalendarEntry.class, SelectedProperty.getDefaultDescription());
        extensionProfile.declare(CalendarEntry.class, TimeZoneProperty.getDefaultDescription());
        extensionProfile.declare(CalendarEntry.class, TimesCleanedProperty.getDefaultDescription(false, false));
        extensionProfile.declare(CalendarEntry.class, When.getDefaultDescription());
        extensionProfile.declare(CalendarEntry.class, Where.getDefaultDescription());
    }

    public List<Where> getLocations() {
        return getRepeatingExtension(Where.class);
    }

    public void addLocation(Where where) {
        getLocations().add(where);
    }

    public AccessLevelProperty getAccessLevel() {
        return (AccessLevelProperty) getExtension(AccessLevelProperty.class);
    }

    public void setAccessLevel(AccessLevelProperty accessLevelProperty) {
        setExtension(accessLevelProperty);
    }

    public ColorProperty getColor() {
        return (ColorProperty) getExtension(ColorProperty.class);
    }

    public void setColor(ColorProperty colorProperty) {
        setExtension(colorProperty);
    }

    public HiddenProperty getHidden() {
        return (HiddenProperty) getExtension(HiddenProperty.class);
    }

    public void setHidden(HiddenProperty hiddenProperty) {
        setExtension(hiddenProperty);
    }

    public OverrideNameProperty getOverrideName() {
        return (OverrideNameProperty) getExtension(OverrideNameProperty.class);
    }

    public void setOverrideName(OverrideNameProperty overrideNameProperty) {
        setExtension(overrideNameProperty);
    }

    public SelectedProperty getSelected() {
        return (SelectedProperty) getExtension(SelectedProperty.class);
    }

    public void setSelected(SelectedProperty selectedProperty) {
        setExtension(selectedProperty);
    }

    public TimeZoneProperty getTimeZone() {
        return (TimeZoneProperty) getExtension(TimeZoneProperty.class);
    }

    public void setTimeZone(TimeZoneProperty timeZoneProperty) {
        setExtension(timeZoneProperty);
    }

    public TimesCleanedProperty getTimesCleaned() {
        return (TimesCleanedProperty) getExtension(TimesCleanedProperty.class);
    }

    public void setTimesCleaned(TimesCleanedProperty timesCleanedProperty) {
        setExtension(timesCleanedProperty);
    }
}
