package com.google.gdata.model.gd;

import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class OriginalEvent extends Element {
    public static final ElementKey<Void, OriginalEvent> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "originalEvent"), Void.class, OriginalEvent.class);
    public static final AttributeKey<String> HREF = AttributeKey.of(new QName(null, "href"), String.class);
    public static final AttributeKey<String> ORIGINAL_ID = AttributeKey.of(new QName(null, "id"), String.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(HREF);
            elementCreatorBuild.addAttribute(ORIGINAL_ID).setRequired(true);
            elementCreatorBuild.addElement(When.KEY).setRequired(true);
        }
    }

    public OriginalEvent() {
        super(KEY);
    }

    protected OriginalEvent(ElementKey<?, ? extends OriginalEvent> elementKey) {
        super(elementKey);
    }

    protected OriginalEvent(ElementKey<?, ? extends OriginalEvent> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public OriginalEvent lock() {
        return (OriginalEvent) super.lock();
    }

    public String getHref() {
        return (String) super.getAttributeValue(HREF);
    }

    public OriginalEvent setHref(String str) {
        super.setAttributeValue(HREF, str);
        return this;
    }

    public boolean hasHref() {
        return super.hasAttribute(HREF);
    }

    public String getOriginalId() {
        return (String) super.getAttributeValue(ORIGINAL_ID);
    }

    public OriginalEvent setOriginalId(String str) {
        super.setAttributeValue(ORIGINAL_ID, str);
        return this;
    }

    public boolean hasOriginalId() {
        return super.hasAttribute(ORIGINAL_ID);
    }

    public When getOriginalStartTime() {
        return (When) super.getElement(When.KEY);
    }

    public OriginalEvent setOriginalStartTime(When when) {
        super.setElement(When.KEY, when);
        return this;
    }

    public boolean hasOriginalStartTime() {
        return super.hasElement(When.KEY);
    }
}
