package com.google.gdata.model;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.Metadata;
import com.google.gdata.util.common.base.Preconditions;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
final class ElementCreatorImpl extends MetadataCreatorImpl implements ElementCreator {
    private final Map<String, ElementKey<?, ?>> adaptations;
    private Set<AttributeKey<?>> attributeWhitelist;
    private final Map<QName, AttributeInfo> attributes;
    private ElementMetadata.Cardinality cardinality;
    private Boolean contentRequired;
    private final ElementKey<?, ?> elementKey;
    private Set<ElementKey<?, ?>> elementWhitelist;
    private final Map<QName, ElementInfo> elements;
    private boolean flattened;
    private Object properties;
    private ElementValidator validator;
    private VirtualElementHolder virtualElementHolder;
    private static final QName UNDECLARED = new QName("**UNDECLARED**");
    static final AttributeKey<Void> ATTRIBUTE_MARKER = AttributeKey.of(UNDECLARED, Void.class);
    static final ElementKey<Void, Element> ELEMENT_MARKER = ElementKey.of(UNDECLARED, Void.class, Element.class);

    enum Action {
        ADD,
        REPLACE
    }

    @Override // com.google.gdata.model.ElementCreator
    public /* bridge */ /* synthetic */ ElementCreator adapt(String str, ElementKey elementKey) {
        return adapt(str, (ElementKey<?, ?>) elementKey);
    }

    @Override // com.google.gdata.model.ElementCreator
    public /* bridge */ /* synthetic */ AttributeCreator addAttribute(AttributeKey attributeKey) {
        return addAttribute((AttributeKey<?>) attributeKey);
    }

    @Override // com.google.gdata.model.ElementCreator
    public /* bridge */ /* synthetic */ ElementCreator addElement(ElementKey elementKey) {
        return addElement((ElementKey<?, ?>) elementKey);
    }

    @Override // com.google.gdata.model.ElementCreator
    public /* bridge */ /* synthetic */ ElementCreator blacklistElements(ElementKey[] elementKeyArr) {
        return blacklistElements((ElementKey<?, ?>[]) elementKeyArr);
    }

    @Override // com.google.gdata.model.ElementCreator
    public /* bridge */ /* synthetic */ ElementCreator orderAndWhitelistAttributes(AttributeKey[] attributeKeyArr) {
        return orderAndWhitelistAttributes((AttributeKey<?>[]) attributeKeyArr);
    }

    @Override // com.google.gdata.model.ElementCreator
    public /* bridge */ /* synthetic */ ElementCreator orderAndWhitelistElements(ElementKey[] elementKeyArr) {
        return orderAndWhitelistElements((ElementKey<?, ?>[]) elementKeyArr);
    }

    @Override // com.google.gdata.model.ElementCreator
    public /* bridge */ /* synthetic */ AttributeCreator replaceAttribute(AttributeKey attributeKey) {
        return replaceAttribute((AttributeKey<?>) attributeKey);
    }

    @Override // com.google.gdata.model.ElementCreator
    public /* bridge */ /* synthetic */ ElementCreator replaceElement(ElementKey elementKey) {
        return replaceElement((ElementKey<?, ?>) elementKey);
    }

    @Override // com.google.gdata.model.ElementCreator
    public /* bridge */ /* synthetic */ ElementCreator whitelistAttributes(AttributeKey[] attributeKeyArr) {
        return whitelistAttributes((AttributeKey<?>[]) attributeKeyArr);
    }

    @Override // com.google.gdata.model.ElementCreator
    public /* bridge */ /* synthetic */ ElementCreator whitelistElements(ElementKey[] elementKeyArr) {
        return whitelistElements((ElementKey<?, ?>[]) elementKeyArr);
    }

    ElementCreatorImpl(MetadataRegistry metadataRegistry, TransformKey transformKey) {
        super(metadataRegistry, transformKey);
        this.attributes = Maps.newLinkedHashMap();
        this.elements = Maps.newLinkedHashMap();
        this.adaptations = Maps.newLinkedHashMap();
        MetadataKey<?> key = transformKey.getKey();
        Preconditions.checkArgument(key instanceof ElementKey, "Key must be to an element.");
        this.elementKey = (ElementKey) key;
    }

    void merge(ElementCreatorImpl elementCreatorImpl) {
        super.merge((MetadataCreatorImpl) elementCreatorImpl);
        if (elementCreatorImpl.cardinality != null) {
            this.cardinality = elementCreatorImpl.cardinality;
        }
        if (elementCreatorImpl.contentRequired != null) {
            this.contentRequired = elementCreatorImpl.contentRequired;
        }
        if (elementCreatorImpl.validator != null) {
            this.validator = elementCreatorImpl.validator;
        }
        if (elementCreatorImpl.properties != null) {
            this.properties = elementCreatorImpl.properties;
        }
        if (elementCreatorImpl.virtualElementHolder != null) {
            this.virtualElementHolder = elementCreatorImpl.virtualElementHolder;
        }
        if (elementCreatorImpl.flattened) {
            this.flattened = true;
        }
        for (AttributeInfo attributeInfo : elementCreatorImpl.attributes.values()) {
            addAttribute(attributeInfo.key, attributeInfo.action);
        }
        for (ElementInfo elementInfo : elementCreatorImpl.elements.values()) {
            addElement(elementInfo.key, elementInfo.action);
        }
        this.adaptations.putAll(elementCreatorImpl.adaptations);
        if (elementCreatorImpl.attributeWhitelist != null) {
            whitelistAttributes(elementCreatorImpl.attributeWhitelist);
        }
        if (elementCreatorImpl.elementWhitelist != null) {
            whitelistElements(elementCreatorImpl.elementWhitelist);
        }
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl adapt(String str, ElementKey<?, ?> elementKey) {
        synchronized (this.registry) {
            this.adaptations.put(str, elementKey);
            this.registry.register(elementKey);
            this.registry.dirty();
        }
        return this;
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl setCardinality(ElementMetadata.Cardinality cardinality) {
        synchronized (this.registry) {
            this.cardinality = cardinality;
            this.registry.dirty();
        }
        return this;
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl setContentRequired(boolean z) {
        synchronized (this.registry) {
            this.contentRequired = Boolean.valueOf(z);
            this.registry.dirty();
        }
        return this;
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl setValidator(ElementValidator elementValidator) {
        synchronized (this.registry) {
            this.validator = elementValidator;
            this.registry.dirty();
        }
        return this;
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl setProperties(Object obj) {
        synchronized (this.registry) {
            this.properties = obj;
            this.registry.dirty();
        }
        return this;
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl setSingleVirtualElement(ElementMetadata.SingleVirtualElement singleVirtualElement) {
        synchronized (this.registry) {
            this.virtualElementHolder = VirtualElementHolder.of(singleVirtualElement);
            this.registry.dirty();
        }
        return this;
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl setMultipleVirtualElement(ElementMetadata.MultipleVirtualElement multipleVirtualElement) {
        synchronized (this.registry) {
            this.virtualElementHolder = VirtualElementHolder.of(multipleVirtualElement);
            this.registry.dirty();
        }
        return this;
    }

    @Override // com.google.gdata.model.MetadataCreatorImpl
    void setSource(Path path, TransformKey transformKey) {
        super.setSource(path, transformKey);
        setElementPath(path);
    }

    private void setElementPath(Path path) {
        synchronized (this.registry) {
            this.virtualElementHolder = VirtualElementHolder.of(path);
            this.registry.dirty();
        }
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl flatten() {
        synchronized (this.registry) {
            this.flattened = true;
            this.registry.dirty();
        }
        return this;
    }

    @Override // com.google.gdata.model.ElementCreator
    public AttributeCreator moveAttribute(AttributeKey<?> attributeKey, Path path) {
        Preconditions.checkArgument(path.selectsAttribute(), "Path must refer to an attribute.");
        AttributeCreatorImpl attributeCreatorImplReplaceAttribute = replaceAttribute(attributeKey);
        AttributeCreatorImpl attributeCreator = getAttributeCreator(path);
        attributeCreatorImplReplaceAttribute.setSource(path, attributeCreator.getTransformKey());
        attributeCreator.moved();
        return attributeCreatorImplReplaceAttribute;
    }

    private AttributeCreatorImpl getAttributeCreator(Path path) {
        Preconditions.checkArgument(path.selectsAttribute(), "Must be an attribute path");
        ElementKey<?, ?> parentKey = path.getParentKey();
        if (parentKey == null) {
            parentKey = this.elementKey;
        }
        return (AttributeCreatorImpl) this.registry.build(parentKey, path.getSelectedAttributeKey(), this.transformKey.getContext());
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreator moveElement(ElementKey<?, ?> elementKey, Path path) {
        Preconditions.checkArgument(path.selectsElement(), "Path must refer to an element.");
        ElementCreatorImpl elementCreatorImplReplaceElement = replaceElement(elementKey);
        ElementCreatorImpl elementCreator = getElementCreator(path);
        elementCreatorImplReplaceElement.setSource(path, elementCreator.getTransformKey());
        elementCreator.moved();
        return elementCreatorImplReplaceElement;
    }

    private ElementCreatorImpl getElementCreator(Path path) {
        Preconditions.checkArgument(path.selectsElement(), "Must be an element path");
        ElementKey<?, ?> parentKey = path.getParentKey();
        if (parentKey == null) {
            parentKey = this.elementKey;
        }
        return (ElementCreatorImpl) this.registry.build(parentKey, path.getSelectedElementKey(), this.transformKey.getContext());
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl addUndeclaredAttributeMarker() {
        addAttribute((AttributeKey<?>) ATTRIBUTE_MARKER);
        return this;
    }

    @Override // com.google.gdata.model.ElementCreator
    public AttributeCreatorImpl addAttribute(AttributeKey<?> attributeKey) {
        return addAttribute(attributeKey, Action.ADD);
    }

    @Override // com.google.gdata.model.ElementCreator
    public AttributeCreatorImpl replaceAttribute(AttributeKey<?> attributeKey) {
        return addAttribute(attributeKey, Action.REPLACE);
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl orderAndWhitelistAttributes(AttributeKey<?>... attributeKeyArr) {
        for (AttributeKey<?> attributeKey : attributeKeyArr) {
            addAttribute(attributeKey);
        }
        return whitelistAttributes(attributeKeyArr);
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl whitelistAttributes(AttributeKey<?>... attributeKeyArr) {
        return whitelistAttributes(Lists.newArrayList(attributeKeyArr));
    }

    private ElementCreatorImpl whitelistAttributes(Collection<AttributeKey<?>> collection) {
        synchronized (this.registry) {
            if (this.attributeWhitelist == null) {
                this.attributeWhitelist = Sets.newHashSet();
            }
            this.attributeWhitelist.addAll(collection);
            this.registry.dirty();
        }
        return this;
    }

    private AttributeCreatorImpl addAttribute(AttributeKey<?> attributeKey, Action action) {
        AttributeCreatorImpl attributeCreatorImpl;
        synchronized (this.registry) {
            QName id = attributeKey.getId();
            if (action == Action.ADD) {
                this.attributes.remove(id);
            }
            this.attributes.put(id, new AttributeInfo(attributeKey, action));
            attributeCreatorImpl = (AttributeCreatorImpl) this.registry.build(this.elementKey, attributeKey, this.transformKey.getContext());
        }
        return attributeCreatorImpl;
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl addUndeclaredElementMarker() {
        addElement((ElementKey<?, ?>) ELEMENT_MARKER);
        return this;
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl addElement(ElementKey<?, ?> elementKey) {
        return addElement(elementKey, Action.ADD);
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl replaceElement(ElementKey<?, ?> elementKey) {
        return addElement(elementKey, Action.REPLACE);
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl orderAndWhitelistElements(ElementKey<?, ?>... elementKeyArr) {
        for (ElementKey<?, ?> elementKey : elementKeyArr) {
            addElement(elementKey);
        }
        return whitelistElements(elementKeyArr);
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl whitelistElements(ElementKey<?, ?>... elementKeyArr) {
        return whitelistElements(Lists.newArrayList(elementKeyArr));
    }

    private ElementCreatorImpl whitelistElements(Collection<ElementKey<?, ?>> collection) {
        synchronized (this.registry) {
            if (this.elementWhitelist == null) {
                this.elementWhitelist = Sets.newHashSet();
            }
            this.elementWhitelist.addAll(collection);
            this.registry.dirty();
        }
        return this;
    }

    @Override // com.google.gdata.model.ElementCreator
    public ElementCreatorImpl blacklistElements(ElementKey<?, ?>... elementKeyArr) {
        synchronized (this.registry) {
            for (ElementKey<?, ?> elementKey : elementKeyArr) {
                addElement(elementKey).setVisible(false);
            }
        }
        return this;
    }

    private ElementCreatorImpl addElement(ElementKey<?, ?> elementKey, Action action) {
        ElementCreatorImpl elementCreatorImpl;
        synchronized (this.registry) {
            QName id = elementKey.getId();
            Preconditions.checkNotNull(id);
            if (action == Action.ADD) {
                this.elements.remove(id);
            }
            this.elements.put(id, new ElementInfo(elementKey, action));
            elementCreatorImpl = (ElementCreatorImpl) this.registry.build(this.elementKey, elementKey, this.transformKey.getContext());
        }
        return elementCreatorImpl;
    }

    @Override // com.google.gdata.model.MetadataCreatorImpl, com.google.gdata.model.MetadataCreator
    public ElementCreatorImpl setName(QName qName) {
        return (ElementCreatorImpl) super.setName(qName);
    }

    @Override // com.google.gdata.model.MetadataCreatorImpl, com.google.gdata.model.MetadataCreator
    public ElementCreatorImpl setRequired(boolean z) {
        return (ElementCreatorImpl) super.setRequired(z);
    }

    @Override // com.google.gdata.model.MetadataCreatorImpl, com.google.gdata.model.MetadataCreator
    public ElementCreatorImpl setVisible(boolean z) {
        return (ElementCreatorImpl) super.setVisible(z);
    }

    @Override // com.google.gdata.model.MetadataCreatorImpl, com.google.gdata.model.MetadataCreator
    public ElementCreatorImpl setVirtualValue(Metadata.VirtualValue virtualValue) {
        return (ElementCreatorImpl) super.setVirtualValue(virtualValue);
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

    Map<QName, AttributeInfo> getAttributes() {
        return ImmutableMap.copyOf((Map) this.attributes);
    }

    ImmutableSet<AttributeKey<?>> getAttributeSet() {
        Collection<AttributeInfo> collectionValues = this.attributes.values();
        ImmutableSet.Builder builder = ImmutableSet.builder();
        Iterator<AttributeInfo> it = collectionValues.iterator();
        while (it.hasNext()) {
            builder.add(it.next().key);
        }
        return builder.build();
    }

    Map<QName, ElementInfo> getElements() {
        return ImmutableMap.copyOf((Map) this.elements);
    }

    ImmutableSet<ElementKey<?, ?>> getElementSet() {
        Collection<ElementInfo> collectionValues = this.elements.values();
        ImmutableSet.Builder builder = ImmutableSet.builder();
        Iterator<ElementInfo> it = collectionValues.iterator();
        while (it.hasNext()) {
            builder.add(it.next().key);
        }
        return builder.build();
    }

    Map<String, ElementKey<?, ?>> getAdaptations() {
        return ImmutableMap.copyOf((Map) this.adaptations);
    }

    Set<AttributeKey<?>> getAttributeWhitelist() {
        if (this.attributeWhitelist == null) {
            return null;
        }
        return ImmutableSet.copyOf((Collection) this.attributeWhitelist);
    }

    Set<ElementKey<?, ?>> getElementWhitelist() {
        if (this.elementWhitelist == null) {
            return null;
        }
        return ImmutableSet.copyOf((Collection) this.elementWhitelist);
    }

    ElementTransform toTransform() {
        check();
        return ElementTransform.create(this);
    }

    private void check() {
        if (this.virtualElementHolder != null && this.cardinality != null) {
            if (this.cardinality == ElementMetadata.Cardinality.SINGLE) {
                if (this.virtualElementHolder.getSingleVirtualElement() == null) {
                    throw new IllegalStateException("Invalid element transform. MultipleVirtualElement set on an element with single cardinality for key " + this.elementKey);
                }
            } else if (this.virtualElementHolder.getMultipleVirtualElement() == null) {
                throw new IllegalStateException("Invalid element transform. SingleVirtualElement set on an element with multiple cardinality for key " + this.elementKey);
            }
        }
    }

    final class AttributeInfo {
        final Action action;
        final AttributeKey<?> key;

        AttributeInfo(AttributeKey<?> attributeKey) {
            this(attributeKey, Action.REPLACE);
        }

        AttributeInfo(AttributeKey<?> attributeKey, Action action) {
            this.key = attributeKey;
            this.action = action;
        }
    }

    final class ElementInfo {
        final Action action;
        final ElementKey<?, ?> key;

        ElementInfo(ElementKey<?, ?> elementKey) {
            this(elementKey, Action.REPLACE);
        }

        ElementInfo(ElementKey<?, ?> elementKey, Action action) {
            this.key = elementKey;
            this.action = action;
        }
    }
}
