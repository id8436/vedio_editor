package com.google.gdata.model;

import com.google.gdata.model.ElementMetadata;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes3.dex */
class ElementIterator implements Iterator<Element> {
    private final Element element;
    private Iterator<Object> elementIterator;
    private final Map<QName, Object> elements;
    private final ElementMetadata<?, ?> metadata;
    private Iterator<ElementKey<?, ?>> metadataIterator;
    private Mode mode = Mode.DECLARED;
    private Element nextElement;
    private Iterator<? extends Element> sublistIterator;

    enum Mode {
        DECLARED,
        UNDECLARED,
        DONE
    }

    ElementIterator(Element element, ElementMetadata<?, ?> elementMetadata, Map<QName, Object> map) {
        this.element = element;
        this.metadata = elementMetadata;
        this.elements = map;
        this.metadataIterator = elementMetadata == null ? null : elementMetadata.getElements().iterator();
        this.elementIterator = map != null ? map.values().iterator() : null;
        this.nextElement = findNextElement();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.nextElement != null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public Element next() {
        if (this.nextElement == null) {
            throw new NoSuchElementException("No remaining elements");
        }
        Element element = this.nextElement;
        this.nextElement = findNextElement();
        return element;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Removal not supported on element iterator");
    }

    private Element findNextElement() {
        Element elementFindNextUndeclaredElement = null;
        if (this.sublistIterator != null) {
            if (this.sublistIterator.hasNext()) {
                return this.sublistIterator.next();
            }
            this.sublistIterator = null;
        }
        while (elementFindNextUndeclaredElement == null && this.mode != Mode.DONE) {
            switch (this.mode) {
                case DECLARED:
                    elementFindNextUndeclaredElement = findNextDeclaredElement();
                    break;
                case UNDECLARED:
                    elementFindNextUndeclaredElement = findNextUndeclaredElement();
                    break;
            }
        }
        return elementFindNextUndeclaredElement;
    }

    private Element findNextDeclaredElement() {
        Collection<? extends Element> collectionGenerateMultiple;
        Element elementGenerateSingle;
        if (this.metadataIterator != null) {
            while (this.metadataIterator.hasNext()) {
                ElementKey<?, ?> next = this.metadataIterator.next();
                if (ElementCreatorImpl.ELEMENT_MARKER == next) {
                    this.mode = Mode.UNDECLARED;
                    return null;
                }
                ElementMetadata<K, L> elementMetadataBindElement = this.metadata.bindElement(next);
                if (elementMetadataBindElement.isVisible()) {
                    ElementMetadata.SingleVirtualElement singleVirtualElement = elementMetadataBindElement.getSingleVirtualElement();
                    if (singleVirtualElement != null && (elementGenerateSingle = singleVirtualElement.generateSingle(this.element, this.metadata, elementMetadataBindElement)) != null) {
                        return elementGenerateSingle;
                    }
                    ElementMetadata.MultipleVirtualElement multipleVirtualElement = elementMetadataBindElement.getMultipleVirtualElement();
                    if (multipleVirtualElement != null && (collectionGenerateMultiple = multipleVirtualElement.generateMultiple(this.element, this.metadata, elementMetadataBindElement)) != null && !collectionGenerateMultiple.isEmpty()) {
                        this.sublistIterator = collectionGenerateMultiple.iterator();
                        return this.sublistIterator.next();
                    }
                    Element elementFirstElement = firstElement(getElementObject(next.getId()));
                    if (elementFirstElement != null) {
                        return elementFirstElement;
                    }
                }
            }
            this.metadataIterator = null;
        }
        this.mode = Mode.UNDECLARED;
        return null;
    }

    private Element findNextUndeclaredElement() {
        if (this.elementIterator != null) {
            while (this.elementIterator.hasNext()) {
                Element elementFirstElement = firstElement(this.elementIterator.next());
                if (elementFirstElement == null || !isUndeclared(elementFirstElement.getElementKey())) {
                    this.sublistIterator = null;
                } else {
                    return elementFirstElement;
                }
            }
            this.sublistIterator = null;
            this.elementIterator = null;
        }
        this.mode = (this.metadataIterator == null || !this.metadataIterator.hasNext()) ? Mode.DONE : Mode.DECLARED;
        return null;
    }

    private Element firstElement(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Element) {
            return (Element) obj;
        }
        Collection collectionCastElementCollection = castElementCollection(obj);
        if (collectionCastElementCollection.isEmpty()) {
            return null;
        }
        this.sublistIterator = collectionCastElementCollection.iterator();
        return this.sublistIterator.next();
    }

    private <T extends Element> Collection<T> castElementCollection(Object obj) {
        return (Collection) obj;
    }

    private Object getElementObject(QName qName) {
        if (this.elements != null) {
            return this.elements.get(qName);
        }
        return null;
    }

    private boolean isUndeclared(ElementKey<?, ?> elementKey) {
        return this.metadata == null || !this.metadata.isDeclared(elementKey);
    }
}
