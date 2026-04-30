package com.google.gdata.data.extensions;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ValueConstruct;
import com.google.gdata.data.extensions.BaseEventEntry;
import com.google.gdata.util.Namespaces;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class BaseEventEntry<E extends BaseEventEntry<E>> extends BaseEntry<E> {
    public BaseEventEntry() {
        getCategories().add(EventEntry.EVENT_CATEGORY);
    }

    public BaseEventEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        getCategories().add(EventEntry.EVENT_CATEGORY);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        Class<?> cls = getClass();
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, RecurrenceException.getDefaultDescription());
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, Reminder.getDefaultDescription());
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, Recurrence.getDefaultDescription());
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, Where.getDefaultDescription());
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, EventStatus.getDefaultDescription());
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, Visibility.getDefaultDescription());
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, Transparency.getDefaultDescription());
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, When.getDefaultDescription());
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, OriginalEvent.getDefaultDescription());
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, Comments.getDefaultDescription());
        extensionProfile.declare((Class<? extends ExtensionPoint>) When.class, Reminder.getDefaultDescription());
    }

    public List<When> getTimes() {
        return getRepeatingExtension(When.class);
    }

    public void addTime(When when) {
        getTimes().add(when);
    }

    public List<Where> getLocations() {
        return getRepeatingExtension(Where.class);
    }

    public void addLocation(Where where) {
        getLocations().add(where);
    }

    public class EventStatus extends ValueConstruct {
        public static final String CANCELED_VALUE = "http://schemas.google.com/g/2005#event.canceled";
        public static final String CONFIRMED_VALUE = "http://schemas.google.com/g/2005#event.confirmed";
        public static final String TENTATIVE_VALUE = "http://schemas.google.com/g/2005#event.tentative";
        public static final EventStatus CONFIRMED = new EventStatus("http://schemas.google.com/g/2005#event.confirmed");
        public static final EventStatus TENTATIVE = new EventStatus("http://schemas.google.com/g/2005#event.tentative");
        public static final EventStatus CANCELED = new EventStatus("http://schemas.google.com/g/2005#event.canceled");

        public EventStatus() {
            super(Namespaces.gNs, "eventStatus", "value");
        }

        public EventStatus(String str) {
            super(Namespaces.gNs, "eventStatus", "value", str);
        }

        public static ExtensionDescription getDefaultDescription() {
            ExtensionDescription extensionDescription = new ExtensionDescription();
            extensionDescription.setExtensionClass(EventStatus.class);
            extensionDescription.setNamespace(Namespaces.gNs);
            extensionDescription.setLocalName("eventStatus");
            extensionDescription.setRepeatable(false);
            return extensionDescription;
        }
    }

    public EventStatus getStatus() {
        return (EventStatus) getExtension(EventStatus.class);
    }

    public void setStatus(EventStatus eventStatus) {
        setExtension(eventStatus);
    }

    public class Visibility extends ValueConstruct {
        public static final String CONFIDENTIAL_VALUE = "http://schemas.google.com/g/2005#event.confidential";
        public static final String DEFAULT_VALUE = "http://schemas.google.com/g/2005#event.default";
        public static final String PRIVATE_VALUE = "http://schemas.google.com/g/2005#event.private";
        public static final String PUBLIC_VALUE = "http://schemas.google.com/g/2005#event.public";
        public static final Visibility DEFAULT = new Visibility("http://schemas.google.com/g/2005#event.default");
        public static final Visibility PUBLIC = new Visibility("http://schemas.google.com/g/2005#event.public");
        public static final Visibility CONFIDENTIAL = new Visibility("http://schemas.google.com/g/2005#event.confidential");
        public static final Visibility PRIVATE = new Visibility("http://schemas.google.com/g/2005#event.private");

        public Visibility() {
            super(Namespaces.gNs, "visibility", "value");
        }

        public Visibility(String str) {
            super(Namespaces.gNs, "visibility", "value", str);
        }

        public static ExtensionDescription getDefaultDescription() {
            return new ExtensionDescription(Visibility.class, Namespaces.gNs, "visibility");
        }
    }

    public Visibility getVisibility() {
        return (Visibility) getExtension(Visibility.class);
    }

    public void setVisibility(Visibility visibility) {
        setExtension(visibility);
    }

    public class Transparency extends ValueConstruct {
        public static final String OPAQUE_VALUE = "http://schemas.google.com/g/2005#event.opaque";
        public static final String TRANSPARENT_VALUE = "http://schemas.google.com/g/2005#event.transparent";
        public static final Transparency OPAQUE = new Transparency("http://schemas.google.com/g/2005#event.opaque");
        public static final Transparency TRANSPARENT = new Transparency("http://schemas.google.com/g/2005#event.transparent");

        public Transparency() {
            super(Namespaces.gNs, "transparency", "value");
        }

        public Transparency(String str) {
            super(Namespaces.gNs, "transparency", "value", str);
        }

        public static ExtensionDescription getDefaultDescription() {
            return new ExtensionDescription(Transparency.class, Namespaces.gNs, "transparency");
        }
    }

    public Transparency getTransparency() {
        return (Transparency) getExtension(Transparency.class);
    }

    public void setTransparency(Transparency transparency) {
        setExtension(transparency);
    }

    public Recurrence getRecurrence() {
        return (Recurrence) getExtension(Recurrence.class);
    }

    public void setRecurrence(Recurrence recurrence) {
        setExtension(recurrence);
    }

    public List<RecurrenceException> getRecurrenceException() {
        return getRepeatingExtension(RecurrenceException.class);
    }

    public void addRecurrenceException(RecurrenceException recurrenceException) {
        getRecurrenceException().add(recurrenceException);
    }

    public OriginalEvent getOriginalEvent() {
        return (OriginalEvent) getExtension(OriginalEvent.class);
    }

    public void setOriginalEvent(OriginalEvent originalEvent) {
        setExtension(originalEvent);
    }

    public List<Reminder> getReminder() {
        if (getRecurrence() != null) {
            return getRepeatingExtension(Reminder.class);
        }
        List<When> times = getTimes();
        if (times.size() >= 1) {
            return times.get(0).getRepeatingExtension(Reminder.class);
        }
        return null;
    }
}
