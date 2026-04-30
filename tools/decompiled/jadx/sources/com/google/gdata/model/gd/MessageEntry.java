package com.google.gdata.model.gd;

import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.atom.Category;
import com.google.gdata.model.atom.Entry;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MessageEntry extends Entry {
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/g/2005#message").lock();
    public static final ElementKey<Void, MessageEntry> KEY = ElementKey.of(Entry.KEY.getId(), Void.class, MessageEntry.class);
    public static final String KIND = "http://schemas.google.com/g/2005#message";

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            Entry.registerMetadata(metadataRegistry);
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addElement(GeoPt.KEY);
            elementCreatorBuild.addElement(Rating.KEY);
            elementCreatorBuild.addElement(When.KEY);
            elementCreatorBuild.addElement(Who.KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
            metadataRegistry.adapt(Entry.KEY, "http://schemas.google.com/g/2005#message", KEY);
        }
    }

    public MessageEntry() {
        super(KEY);
        addCategory(CATEGORY);
    }

    public MessageEntry(Entry entry) {
        super(KEY, entry);
    }

    protected MessageEntry(ElementKey<?, ? extends MessageEntry> elementKey) {
        super(elementKey);
    }

    protected MessageEntry(ElementKey<?, ? extends MessageEntry> elementKey, Entry entry) {
        super(elementKey, entry);
    }

    @Override // com.google.gdata.model.Element
    public MessageEntry lock() {
        return (MessageEntry) super.lock();
    }

    public GeoPt getGeoPt() {
        return (GeoPt) super.getElement(GeoPt.KEY);
    }

    public MessageEntry setGeoPt(GeoPt geoPt) {
        super.setElement(GeoPt.KEY, geoPt);
        return this;
    }

    public boolean hasGeoPt() {
        return super.hasElement(GeoPt.KEY);
    }

    public Rating getRating() {
        return (Rating) super.getElement(Rating.KEY);
    }

    public MessageEntry setRating(Rating rating) {
        super.setElement(Rating.KEY, rating);
        return this;
    }

    public boolean hasRating() {
        return super.hasElement(Rating.KEY);
    }

    public When getTime() {
        return (When) super.getElement(When.KEY);
    }

    public MessageEntry setTime(When when) {
        super.setElement(When.KEY, when);
        return this;
    }

    public boolean hasTime() {
        return super.hasElement(When.KEY);
    }

    public List<Who> getWhoList() {
        return super.getElements(Who.KEY);
    }

    public MessageEntry addWhoList(Who who) {
        super.addElement(Who.KEY, who);
        return this;
    }

    public boolean removeWhoList(Who who) {
        return super.removeElement(who);
    }

    public void clearWhoList() {
        super.removeElement(Who.KEY);
    }

    public boolean hasWhoList() {
        return super.hasElement(Who.KEY);
    }
}
