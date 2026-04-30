package com.google.gdata.model;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes3.dex */
class AttributeIterator implements Iterator<Attribute> {
    private Iterator<Map.Entry<QName, Attribute>> attributeIterator;
    private final Element element;
    private final ElementMetadata<?, ?> metadata;
    private Iterator<AttributeKey<?>> metadataIterator;
    private Mode mode = Mode.DECLARED;
    private Attribute nextAttribute;

    enum Mode {
        DECLARED,
        UNDECLARED,
        DONE
    }

    AttributeIterator(Element element, ElementMetadata<?, ?> elementMetadata, Map<QName, Attribute> map) {
        this.element = element;
        this.metadata = elementMetadata;
        this.metadataIterator = elementMetadata == null ? null : elementMetadata.getAttributes().iterator();
        this.attributeIterator = map != null ? map.entrySet().iterator() : null;
        this.nextAttribute = findNextAttribute();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.nextAttribute != null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public Attribute next() {
        if (this.nextAttribute == null) {
            throw new NoSuchElementException("No remaining attributes");
        }
        Attribute attribute = this.nextAttribute;
        this.nextAttribute = findNextAttribute();
        return attribute;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Removal not supported on attribute iterator");
    }

    private Attribute findNextAttribute() {
        Attribute attributeFindNextUndeclaredAttribute = null;
        while (attributeFindNextUndeclaredAttribute == null && this.mode != Mode.DONE) {
            switch (this.mode) {
                case DECLARED:
                    attributeFindNextUndeclaredAttribute = findNextDeclaredAttribute();
                    break;
                case UNDECLARED:
                    attributeFindNextUndeclaredAttribute = findNextUndeclaredAttribute();
                    break;
            }
        }
        return attributeFindNextUndeclaredAttribute;
    }

    private Attribute findNextDeclaredAttribute() {
        Object objGenerateValue;
        if (this.metadataIterator != null) {
            while (this.metadataIterator.hasNext()) {
                AttributeKey<?> next = this.metadataIterator.next();
                if (ElementCreatorImpl.ATTRIBUTE_MARKER == next) {
                    this.mode = Mode.UNDECLARED;
                    return null;
                }
                Metadata metadataBindAttribute = this.metadata.bindAttribute(next);
                if (metadataBindAttribute.isVisible() && (objGenerateValue = metadataBindAttribute.generateValue(this.element, this.metadata)) != null) {
                    return new Attribute(next, objGenerateValue);
                }
            }
            this.metadataIterator = null;
        }
        this.mode = Mode.UNDECLARED;
        return null;
    }

    private Attribute findNextUndeclaredAttribute() {
        if (this.attributeIterator != null) {
            while (this.attributeIterator.hasNext()) {
                Map.Entry<QName, Attribute> next = this.attributeIterator.next();
                if (isUndeclared(next.getValue().getAttributeKey())) {
                    return next.getValue();
                }
            }
            this.attributeIterator = null;
        }
        this.mode = (this.metadataIterator == null || !this.metadataIterator.hasNext()) ? Mode.DONE : Mode.DECLARED;
        return null;
    }

    private boolean isUndeclared(AttributeKey<?> attributeKey) {
        return this.metadata == null || !this.metadata.isDeclared(attributeKey);
    }
}
