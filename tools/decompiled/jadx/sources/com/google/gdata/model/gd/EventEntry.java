package com.google.gdata.model.gd;

import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.atom.Category;
import com.google.gdata.model.atom.Entry;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class EventEntry extends Entry {
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/g/2005#event").lock();
    public static final ElementKey<Void, EventEntry> KEY = ElementKey.of(Entry.KEY.getId(), Void.class, EventEntry.class);
    public static final String KIND = "http://schemas.google.com/g/2005#event";

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            Entry.registerMetadata(metadataRegistry);
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addElement(Comments.KEY);
            elementCreatorBuild.addElement(EventStatus.KEY);
            elementCreatorBuild.addElement(Where.KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
            elementCreatorBuild.addElement(OriginalEvent.KEY);
            elementCreatorBuild.addElement(Who.KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
            elementCreatorBuild.addElement(Recurrence.KEY);
            elementCreatorBuild.addElement(RecurrenceException.KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
            elementCreatorBuild.addElement(Reminder.KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
            elementCreatorBuild.addElement(When.KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
            elementCreatorBuild.addElement(Transparency.KEY);
            elementCreatorBuild.addElement(Visibility.KEY);
            metadataRegistry.adapt(Entry.KEY, "http://schemas.google.com/g/2005#event", KEY);
        }
    }

    public EventEntry() {
        super(KEY);
        addCategory(CATEGORY);
    }

    public EventEntry(Entry entry) {
        super(KEY, entry);
    }

    protected EventEntry(ElementKey<?, ? extends EventEntry> elementKey) {
        super(elementKey);
    }

    protected EventEntry(ElementKey<?, ? extends EventEntry> elementKey, Entry entry) {
        super(elementKey, entry);
    }

    @Override // com.google.gdata.model.Element
    public EventEntry lock() {
        return (EventEntry) super.lock();
    }

    public Comments getComments() {
        return (Comments) super.getElement(Comments.KEY);
    }

    public EventEntry setComments(Comments comments) {
        super.setElement(Comments.KEY, comments);
        return this;
    }

    public boolean hasComments() {
        return super.hasElement(Comments.KEY);
    }

    public EventStatus getEventStatus() {
        return (EventStatus) super.getElement(EventStatus.KEY);
    }

    public EventEntry setEventStatus(EventStatus eventStatus) {
        super.setElement(EventStatus.KEY, eventStatus);
        return this;
    }

    public boolean hasEventStatus() {
        return super.hasElement(EventStatus.KEY);
    }

    public List<Where> getLocations() {
        return super.getElements(Where.KEY);
    }

    public EventEntry addLocation(Where where) {
        super.addElement(Where.KEY, where);
        return this;
    }

    public boolean removeLocation(Where where) {
        return super.removeElement(where);
    }

    public void clearLocations() {
        super.removeElement(Where.KEY);
    }

    public boolean hasLocations() {
        return super.hasElement(Where.KEY);
    }

    public OriginalEvent getOriginalEvent() {
        return (OriginalEvent) super.getElement(OriginalEvent.KEY);
    }

    public EventEntry setOriginalEvent(OriginalEvent originalEvent) {
        super.setElement(OriginalEvent.KEY, originalEvent);
        return this;
    }

    public boolean hasOriginalEvent() {
        return super.hasElement(OriginalEvent.KEY);
    }

    public List<Who> getParticipants() {
        return super.getElements(Who.KEY);
    }

    public EventEntry addParticipant(Who who) {
        super.addElement(Who.KEY, who);
        return this;
    }

    public boolean removeParticipant(Who who) {
        return super.removeElement(who);
    }

    public void clearParticipants() {
        super.removeElement(Who.KEY);
    }

    public boolean hasParticipants() {
        return super.hasElement(Who.KEY);
    }

    public Recurrence getRecurrence() {
        return (Recurrence) super.getElement(Recurrence.KEY);
    }

    public EventEntry setRecurrence(Recurrence recurrence) {
        super.setElement(Recurrence.KEY, recurrence);
        return this;
    }

    public boolean hasRecurrence() {
        return super.hasElement(Recurrence.KEY);
    }

    public List<RecurrenceException> getRecurrenceException() {
        return super.getElements(RecurrenceException.KEY);
    }

    public EventEntry addRecurrenceException(RecurrenceException recurrenceException) {
        super.addElement(RecurrenceException.KEY, recurrenceException);
        return this;
    }

    public boolean removeRecurrenceException(RecurrenceException recurrenceException) {
        return super.removeElement(recurrenceException);
    }

    public void clearRecurrenceException() {
        super.removeElement(RecurrenceException.KEY);
    }

    public boolean hasRecurrenceException() {
        return super.hasElement(RecurrenceException.KEY);
    }

    public List<Reminder> getReminders() {
        return super.getElements(Reminder.KEY);
    }

    public EventEntry addReminder(Reminder reminder) {
        super.addElement(Reminder.KEY, reminder);
        return this;
    }

    public boolean removeReminder(Reminder reminder) {
        return super.removeElement(reminder);
    }

    public void clearReminders() {
        super.removeElement(Reminder.KEY);
    }

    public boolean hasReminders() {
        return super.hasElement(Reminder.KEY);
    }

    public List<When> getTimes() {
        return super.getElements(When.KEY);
    }

    public EventEntry addTime(When when) {
        super.addElement(When.KEY, when);
        return this;
    }

    public boolean removeTime(When when) {
        return super.removeElement(when);
    }

    public void clearTimes() {
        super.removeElement(When.KEY);
    }

    public boolean hasTimes() {
        return super.hasElement(When.KEY);
    }

    public Transparency getTransparency() {
        return (Transparency) super.getElement(Transparency.KEY);
    }

    public EventEntry setTransparency(Transparency transparency) {
        super.setElement(Transparency.KEY, transparency);
        return this;
    }

    public boolean hasTransparency() {
        return super.hasElement(Transparency.KEY);
    }

    public Visibility getVisibility() {
        return (Visibility) super.getElement(Visibility.KEY);
    }

    public EventEntry setVisibility(Visibility visibility) {
        super.setElement(Visibility.KEY, visibility);
        return this;
    }

    public boolean hasVisibility() {
        return super.hasElement(Visibility.KEY);
    }
}
