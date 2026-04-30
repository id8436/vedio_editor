package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class RecurrenceExceptionEntryLink extends EntryLink {
    public static final ElementKey<Void, RecurrenceExceptionEntryLink> KEY = ElementKey.of(EntryLink.KEY.getId(), Void.class, RecurrenceExceptionEntryLink.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            EntryLink.registerMetadata(metadataRegistry);
            metadataRegistry.build(KEY).replaceElement(RecurrenceExceptionEntry.KEY);
        }
    }

    public RecurrenceExceptionEntryLink() {
        super(KEY);
    }

    protected RecurrenceExceptionEntryLink(ElementKey<?, ? extends RecurrenceExceptionEntryLink> elementKey) {
        super(elementKey);
    }

    protected RecurrenceExceptionEntryLink(ElementKey<?, ? extends RecurrenceExceptionEntryLink> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public RecurrenceExceptionEntryLink lock() {
        return (RecurrenceExceptionEntryLink) super.lock();
    }

    @Override // com.google.gdata.model.gd.EntryLink
    public RecurrenceExceptionEntry getEntry() {
        return (RecurrenceExceptionEntry) super.getElement(RecurrenceExceptionEntry.KEY);
    }

    public RecurrenceExceptionEntryLink setEntry(RecurrenceExceptionEntry recurrenceExceptionEntry) {
        super.setElement(RecurrenceExceptionEntry.KEY, recurrenceExceptionEntry);
        return this;
    }

    @Override // com.google.gdata.model.gd.EntryLink
    public boolean hasEntry() {
        return super.hasElement(RecurrenceExceptionEntry.KEY);
    }
}
