package com.google.gdata.model;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.gdata.model.ElementCreatorImpl;
import com.google.gdata.model.ElementMetadata;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class ElementTransform extends Transform {
    static final ElementTransform EMPTY = new ElementTransform();
    private final Map<String, ElementKey<?, ?>> adaptations;
    private final Map<QName, ElementCreatorImpl.AttributeInfo> attributes;
    private final ElementMetadata.Cardinality cardinality;
    private final Boolean contentRequired;
    private final Map<QName, ElementCreatorImpl.ElementInfo> elements;
    private final boolean flattened;
    private final Object properties;
    private final ElementValidator validator;
    private final VirtualElementHolder virtualElementHolder;

    static ElementTransform create(ElementCreatorImpl elementCreatorImpl) {
        ElementTransform elementTransform = new ElementTransform(elementCreatorImpl);
        if (elementTransform.isEmpty()) {
            return EMPTY;
        }
        return elementTransform;
    }

    static ElementTransform create(ElementKey<?, ?> elementKey, Iterable<ElementTransform> iterable) {
        ElementTransform elementTransform = new ElementTransform(elementKey, iterable);
        if (elementTransform.isEmpty()) {
            return EMPTY;
        }
        return elementTransform;
    }

    static ElementTransform mergeSource(Schema schema, ElementKey<?, ?> elementKey, ElementTransform elementTransform, MetadataContext metadataContext) {
        ElementTransform transform;
        TransformKey source = elementTransform.getSource();
        if (source != null && (transform = schema.getTransform(source.getParent(), (ElementKey<?, ?>) source.getKey(), metadataContext)) != null) {
            return new ElementTransform(elementKey, elementTransform, transform);
        }
        return elementTransform;
    }

    private ElementTransform() {
        this.cardinality = null;
        this.contentRequired = null;
        this.validator = null;
        this.properties = null;
        this.virtualElementHolder = null;
        this.flattened = false;
        this.attributes = ImmutableMap.of();
        this.elements = ImmutableMap.of();
        this.adaptations = ImmutableMap.of();
    }

    private ElementTransform(ElementCreatorImpl elementCreatorImpl) {
        super(elementCreatorImpl);
        this.cardinality = elementCreatorImpl.getCardinality();
        this.contentRequired = elementCreatorImpl.getContentRequired();
        this.validator = elementCreatorImpl.getValidator();
        this.properties = elementCreatorImpl.getProperties();
        this.virtualElementHolder = elementCreatorImpl.getVirtualElementHolder();
        this.flattened = elementCreatorImpl.isFlattened();
        this.attributes = ImmutableMap.copyOf((Map) elementCreatorImpl.getAttributes());
        this.elements = ImmutableMap.copyOf((Map) elementCreatorImpl.getElements());
        this.adaptations = ImmutableMap.copyOf((Map) elementCreatorImpl.getAdaptations());
    }

    private ElementTransform(ElementKey<?, ?> elementKey, Iterable<ElementTransform> iterable) {
        super(iterable);
        VirtualElementHolder virtualElementHolder = null;
        boolean z = false;
        LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
        LinkedHashMap linkedHashMapNewLinkedHashMap2 = Maps.newLinkedHashMap();
        LinkedHashMap linkedHashMapNewLinkedHashMap3 = Maps.newLinkedHashMap();
        Boolean bool = null;
        ElementMetadata.Cardinality cardinality = null;
        Object obj = null;
        ElementValidator elementValidator = null;
        for (ElementTransform elementTransform : iterable) {
            ElementMetadata.Cardinality cardinality2 = elementTransform.cardinality != null ? elementTransform.cardinality : cardinality;
            Boolean bool2 = elementTransform.contentRequired != null ? elementTransform.contentRequired : bool;
            ElementValidator elementValidator2 = elementTransform.validator != null ? elementTransform.validator : elementValidator;
            Object obj2 = elementTransform.properties != null ? elementTransform.properties : obj;
            VirtualElementHolder virtualElementHolder2 = elementTransform.virtualElementHolder != null ? elementTransform.virtualElementHolder : virtualElementHolder;
            z = elementTransform.flattened ? true : z;
            for (Map.Entry<QName, ElementCreatorImpl.AttributeInfo> entry : elementTransform.attributes.entrySet()) {
                QName key = entry.getKey();
                ElementCreatorImpl.AttributeInfo value = entry.getValue();
                if (value.action == ElementCreatorImpl.Action.ADD) {
                    linkedHashMapNewLinkedHashMap.remove(key);
                }
                linkedHashMapNewLinkedHashMap.put(key, value);
            }
            for (Map.Entry<QName, ElementCreatorImpl.ElementInfo> entry2 : elementTransform.elements.entrySet()) {
                QName key2 = entry2.getKey();
                ElementCreatorImpl.ElementInfo value2 = entry2.getValue();
                if (value2.action == ElementCreatorImpl.Action.ADD) {
                    linkedHashMapNewLinkedHashMap2.remove(key2);
                }
                linkedHashMapNewLinkedHashMap2.put(key2, value2);
            }
            for (Map.Entry<String, ElementKey<?, ?>> entry3 : elementTransform.adaptations.entrySet()) {
                ElementKey<?, ?> value3 = entry3.getValue();
                if (isValidAdaptation(elementKey, value3)) {
                    linkedHashMapNewLinkedHashMap3.put(entry3.getKey(), value3);
                }
            }
            virtualElementHolder = virtualElementHolder2;
            obj = obj2;
            elementValidator = elementValidator2;
            bool = bool2;
            cardinality = cardinality2;
        }
        this.cardinality = cardinality;
        this.contentRequired = bool;
        this.validator = elementValidator;
        this.properties = obj;
        this.virtualElementHolder = virtualElementHolder;
        this.flattened = z;
        this.attributes = ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
        this.elements = ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap2);
        this.adaptations = ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap3);
    }

    private ElementTransform(ElementKey<?, ?> elementKey, ElementTransform elementTransform, ElementTransform elementTransform2) {
        super(elementTransform, elementTransform2);
        this.cardinality = (ElementMetadata.Cardinality) first(elementTransform.cardinality, elementTransform2.cardinality);
        this.contentRequired = elementTransform.contentRequired;
        this.validator = (ElementValidator) first(elementTransform.validator, elementTransform2.validator);
        this.properties = first(elementTransform.properties, elementTransform2.properties);
        this.virtualElementHolder = (VirtualElementHolder) first(elementTransform.virtualElementHolder, elementTransform2.virtualElementHolder);
        this.flattened = elementTransform.isFlattened() || elementTransform2.isFlattened();
        LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
        linkedHashMapNewLinkedHashMap.putAll(elementTransform2.getAttributes());
        for (Map.Entry<QName, ElementCreatorImpl.AttributeInfo> entry : elementTransform.attributes.entrySet()) {
            if (!linkedHashMapNewLinkedHashMap.containsKey(entry.getKey())) {
                linkedHashMapNewLinkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        this.attributes = ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
        LinkedHashMap linkedHashMapNewLinkedHashMap2 = Maps.newLinkedHashMap();
        linkedHashMapNewLinkedHashMap2.putAll(elementTransform2.getElements());
        for (Map.Entry<QName, ElementCreatorImpl.ElementInfo> entry2 : elementTransform.elements.entrySet()) {
            QName key = entry2.getKey();
            if (!linkedHashMapNewLinkedHashMap2.containsKey(key)) {
                linkedHashMapNewLinkedHashMap2.put(key, entry2.getValue());
            }
        }
        this.elements = ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap2);
        LinkedHashMap linkedHashMapNewLinkedHashMap3 = Maps.newLinkedHashMap();
        linkedHashMapNewLinkedHashMap3.putAll(elementTransform2.getAdaptations());
        for (Map.Entry<String, ElementKey<?, ?>> entry3 : elementTransform.adaptations.entrySet()) {
            String key2 = entry3.getKey();
            ElementKey<?, ?> value = entry3.getValue();
            if (!linkedHashMapNewLinkedHashMap3.containsKey(key2) && isValidAdaptation(elementKey, value)) {
                linkedHashMapNewLinkedHashMap3.put(key2, value);
            }
        }
        this.adaptations = ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap3);
    }

    private static boolean isValidAdaptation(ElementKey<?, ?> elementKey, ElementKey<?, ?> elementKey2) {
        Class<? extends E> elementType = elementKey.getElementType();
        Class<?> elementType2 = elementKey2.getElementType();
        if (elementType == elementType2) {
            return false;
        }
        return elementType.isAssignableFrom(elementType2);
    }

    <D, E extends Element> ElementMetadata<D, E> toMetadata(Schema schema, ElementKey<?, ?> elementKey, ElementKey<D, E> elementKey2, MetadataContext metadataContext) {
        return new ElementMetadataImpl(schema, this, elementKey, elementKey2, metadataContext);
    }

    ElementMetadata.Cardinality getCardinality() {
        return this.cardinality;
    }

    Boolean getContentRequired() {
        return this.contentRequired;
    }

    ElementValidator getValidator() {
        return this.validator;
    }

    Object getProperties() {
        return this.properties;
    }

    VirtualElementHolder getVirtualElementHolder() {
        return this.virtualElementHolder;
    }

    boolean isFlattened() {
        return this.flattened;
    }

    Map<QName, ElementCreatorImpl.AttributeInfo> getAttributes() {
        return this.attributes;
    }

    Map<QName, ElementCreatorImpl.ElementInfo> getElements() {
        return this.elements;
    }

    Map<String, ElementKey<?, ?>> getAdaptations() {
        return this.adaptations;
    }

    @Override // com.google.gdata.model.Transform
    boolean isEmpty() {
        return super.isEmpty() && this.cardinality == null && this.contentRequired == null && this.validator == null && this.properties == null && this.virtualElementHolder == null && !this.flattened && this.attributes.isEmpty() && this.elements.isEmpty() && this.adaptations.isEmpty();
    }
}
