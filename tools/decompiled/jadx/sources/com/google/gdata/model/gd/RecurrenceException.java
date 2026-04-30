package com.google.gdata.model.gd;

import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class RecurrenceException extends Element {
    public static final ElementKey<Void, RecurrenceException> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "recurrenceException"), Void.class, RecurrenceException.class);
    public static final AttributeKey<Boolean> SPECIALIZED = AttributeKey.of(new QName(null, "specialized"), Boolean.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(SPECIALIZED).setRequired(true);
            elementCreatorBuild.addElement(RecurrenceExceptionEntryLink.KEY).setRequired(true);
        }
    }

    public RecurrenceException() {
        super(KEY);
    }

    protected RecurrenceException(ElementKey<?, ? extends RecurrenceException> elementKey) {
        super(elementKey);
    }

    protected RecurrenceException(ElementKey<?, ? extends RecurrenceException> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public RecurrenceException lock() {
        return (RecurrenceException) super.lock();
    }

    public RecurrenceExceptionEntryLink getEntryLink() {
        return (RecurrenceExceptionEntryLink) super.getElement(RecurrenceExceptionEntryLink.KEY);
    }

    public RecurrenceException setEntryLink(RecurrenceExceptionEntryLink recurrenceExceptionEntryLink) {
        super.setElement(RecurrenceExceptionEntryLink.KEY, recurrenceExceptionEntryLink);
        return this;
    }

    public boolean hasEntryLink() {
        return super.hasElement(RecurrenceExceptionEntryLink.KEY);
    }

    public Boolean getSpecialized() {
        return (Boolean) super.getAttributeValue(SPECIALIZED);
    }

    public RecurrenceException setSpecialized(Boolean bool) {
        super.setAttributeValue(SPECIALIZED, bool);
        return this;
    }

    public boolean hasSpecialized() {
        return super.hasAttribute(SPECIALIZED);
    }
}
