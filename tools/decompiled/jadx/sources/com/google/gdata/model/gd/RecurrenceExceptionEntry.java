package com.google.gdata.model.gd;

import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.atom.Entry;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RecurrenceExceptionEntry extends Entry {
    public static final ElementKey<Void, RecurrenceExceptionEntry> KEY = ElementKey.of(Entry.KEY.getId(), Void.class, RecurrenceExceptionEntry.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            Entry.registerMetadata(metadataRegistry);
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addElement(Comments.KEY);
            elementCreatorBuild.addElement(EventStatus.KEY);
            elementCreatorBuild.addElement(OriginalEvent.KEY);
            elementCreatorBuild.addElement(Transparency.KEY);
            elementCreatorBuild.addElement(Visibility.KEY);
            elementCreatorBuild.addElement(When.KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
            elementCreatorBuild.addElement(Where.KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
            elementCreatorBuild.addElement(Who.KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
        }
    }

    public RecurrenceExceptionEntry() {
        super(KEY);
    }

    public RecurrenceExceptionEntry(Entry entry) {
        super(KEY, entry);
    }

    protected RecurrenceExceptionEntry(ElementKey<?, ? extends RecurrenceExceptionEntry> elementKey) {
        super(elementKey);
    }

    protected RecurrenceExceptionEntry(ElementKey<?, ? extends RecurrenceExceptionEntry> elementKey, Entry entry) {
        super(elementKey, entry);
    }

    @Override // com.google.gdata.model.Element
    public RecurrenceExceptionEntry lock() {
        return (RecurrenceExceptionEntry) super.lock();
    }

    public Comments getComments() {
        return (Comments) super.getElement(Comments.KEY);
    }

    public RecurrenceExceptionEntry setComments(Comments comments) {
        super.setElement(Comments.KEY, comments);
        return this;
    }

    public boolean hasComments() {
        return super.hasElement(Comments.KEY);
    }

    public EventStatus getEventStatus() {
        return (EventStatus) super.getElement(EventStatus.KEY);
    }

    public RecurrenceExceptionEntry setEventStatus(EventStatus eventStatus) {
        super.setElement(EventStatus.KEY, eventStatus);
        return this;
    }

    public boolean hasEventStatus() {
        return super.hasElement(EventStatus.KEY);
    }

    public OriginalEvent getOriginalEvent() {
        return (OriginalEvent) super.getElement(OriginalEvent.KEY);
    }

    public RecurrenceExceptionEntry setOriginalEvent(OriginalEvent originalEvent) {
        super.setElement(OriginalEvent.KEY, originalEvent);
        return this;
    }

    public boolean hasOriginalEvent() {
        return super.hasElement(OriginalEvent.KEY);
    }

    public Transparency getTransparency() {
        return (Transparency) super.getElement(Transparency.KEY);
    }

    public RecurrenceExceptionEntry setTransparency(Transparency transparency) {
        super.setElement(Transparency.KEY, transparency);
        return this;
    }

    public boolean hasTransparency() {
        return super.hasElement(Transparency.KEY);
    }

    public Visibility getVisibility() {
        return (Visibility) super.getElement(Visibility.KEY);
    }

    public RecurrenceExceptionEntry setVisibility(Visibility visibility) {
        super.setElement(Visibility.KEY, visibility);
        return this;
    }

    public boolean hasVisibility() {
        return super.hasElement(Visibility.KEY);
    }

    public List<When> getWhen() {
        return super.getElements(When.KEY);
    }

    public RecurrenceExceptionEntry addWhen(When when) {
        super.addElement(When.KEY, when);
        return this;
    }

    public boolean removeWhen(When when) {
        return super.removeElement(when);
    }

    public void clearWhen() {
        super.removeElement(When.KEY);
    }

    public boolean hasWhen() {
        return super.hasElement(When.KEY);
    }

    public List<Where> getWhere() {
        return super.getElements(Where.KEY);
    }

    public RecurrenceExceptionEntry addWhere(Where where) {
        super.addElement(Where.KEY, where);
        return this;
    }

    public boolean removeWhere(Where where) {
        return super.removeElement(where);
    }

    public void clearWhere() {
        super.removeElement(Where.KEY);
    }

    public boolean hasWhere() {
        return super.hasElement(Where.KEY);
    }

    public List<Who> getWho() {
        return super.getElements(Who.KEY);
    }

    public RecurrenceExceptionEntry addWho(Who who) {
        super.addElement(Who.KEY, who);
        return this;
    }

    public boolean removeWho(Who who) {
        return super.removeElement(who);
    }

    public void clearWho() {
        super.removeElement(Who.KEY);
    }

    public boolean hasWho() {
        return super.hasElement(Who.KEY);
    }
}
