package com.google.gdata.model;

import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreatorImpl;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.wireformats.ContentCreationException;
import com.google.gdata.wireformats.ObjectConverter;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
final class ElementMetadataImpl<D, E extends Element> extends MetadataImpl<D> implements ElementMetadata<D, E> {
    private static final ElementValidator DEFAULT_VALIDATOR = new MetadataValidator();
    private final AdaptationRegistry adaptations;
    private final ImmutableMap<QName, AttributeKey<?>> attributes;
    private final ElementMetadata.Cardinality cardinality;
    private final ElementKey<D, E> elemKey;
    private final ImmutableMap<QName, ElementKey<?, ?>> elements;
    private final boolean isContentRequired;
    private final boolean isFlattened;
    private final Object properties;
    private Collection<XmlNamespace> referencedNamespaces;
    private final ImmutableMap<QName, AttributeKey<?>> renamedAttributes;
    private final ImmutableMap<QName, ElementKey<?, ?>> renamedElements;
    private final ElementKey<D, E> sourceKey;
    private final ElementValidator validator;
    private final VirtualElementHolder virtualElementHolder;

    ElementMetadataImpl(Schema schema, ElementTransform elementTransform, ElementKey<?, ?> elementKey, ElementKey<D, E> elementKey2, MetadataContext metadataContext) {
        super(schema, elementTransform, elementKey, elementKey2, metadataContext);
        this.referencedNamespaces = null;
        this.elemKey = elementKey2;
        TransformKey source = elementTransform.getSource();
        if (source != null) {
            ElementKey<D, E> elementKeyOf = ElementKey.of(source.getKey().getId(), elementKey2.getDatatype(), elementKey2.getElementType());
            if (elementKeyOf.equals(this.elemKey)) {
                this.sourceKey = this.elemKey;
            } else {
                this.sourceKey = elementKeyOf;
            }
        } else {
            this.sourceKey = this.elemKey;
        }
        ElementTransform elementTransformMergeSource = ElementTransform.mergeSource(schema, elementKey2, elementTransform, metadataContext);
        this.cardinality = (ElementMetadata.Cardinality) firstNonNull(elementTransformMergeSource.getCardinality(), ElementMetadata.Cardinality.SINGLE);
        this.isContentRequired = ((Boolean) firstNonNull(elementTransformMergeSource.getContentRequired(), true)).booleanValue();
        this.validator = (ElementValidator) firstNonNull(elementTransformMergeSource.getValidator(), DEFAULT_VALIDATOR);
        this.properties = elementTransformMergeSource.getProperties();
        this.virtualElementHolder = elementTransformMergeSource.getVirtualElementHolder();
        this.isFlattened = elementTransformMergeSource.isFlattened();
        this.attributes = getAttributes(elementTransformMergeSource.getAttributes().values());
        this.renamedAttributes = getRenamedAttributes();
        this.elements = getElements(elementTransformMergeSource.getElements().values());
        this.renamedElements = getRenamedElements();
        if (elementTransformMergeSource.getAdaptations().isEmpty()) {
            this.adaptations = null;
        } else {
            this.adaptations = AdaptationRegistryFactory.create(schema, elementTransformMergeSource);
        }
    }

    private ImmutableMap<QName, AttributeKey<?>> getAttributes(Collection<ElementCreatorImpl.AttributeInfo> collection) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (ElementCreatorImpl.AttributeInfo attributeInfo : collection) {
            builder.put(attributeInfo.key.getId(), attributeInfo.key);
        }
        return builder.build();
    }

    private ImmutableMap<QName, AttributeKey<?>> getRenamedAttributes() {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        Iterator it = this.attributes.values().iterator();
        while (it.hasNext()) {
            AttributeKey<K> attributeKey = (AttributeKey) it.next();
            QName name = bindAttribute(attributeKey).getName();
            if (!name.equals(attributeKey.getId())) {
                builder.put(name, attributeKey);
            }
        }
        return builder.build();
    }

    private ImmutableMap<QName, ElementKey<?, ?>> getElements(Collection<ElementCreatorImpl.ElementInfo> collection) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (ElementCreatorImpl.ElementInfo elementInfo : collection) {
            builder.put(elementInfo.key.getId(), elementInfo.key);
        }
        return builder.build();
    }

    private ImmutableMap<QName, ElementKey<?, ?>> getRenamedElements() {
        LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
        for (ElementKey<?, ?> elementKey : this.elements.values()) {
            QName name = this.schema.getTransform((ElementKey<?, ?>) this.sourceKey, elementKey, this.context).getName();
            if (name != null && !name.equals(elementKey.getId()) && !linkedHashMapNewLinkedHashMap.containsKey(name)) {
                linkedHashMapNewLinkedHashMap.put(name, elementKey);
            }
        }
        return ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
    }

    @Override // com.google.gdata.model.ElementMetadata
    public ElementKey<?, ?> adapt(String str) {
        if (this.adaptations != null) {
            return this.adaptations.getAdaptation(str);
        }
        return null;
    }

    @Override // com.google.gdata.model.ElementMetadata
    public boolean isDeclared(AttributeKey<?> attributeKey) {
        return this.attributes.containsKey(attributeKey.getId());
    }

    @Override // com.google.gdata.model.ElementMetadata
    public AttributeKey<?> findAttribute(QName qName) {
        AttributeKey<?> attributeKeyFindAttribute;
        AttributeKey<?> attributeKey;
        AttributeKey<?> attributeKey2;
        if (this.renamedAttributes.isEmpty() || (attributeKey2 = this.renamedAttributes.get(qName)) == null) {
            if (!this.attributes.isEmpty()) {
                AttributeKey<?> attributeKey3 = this.attributes.get(qName);
                if (attributeKey3 == null) {
                    if (qName.matchesAnyNamespace()) {
                        Iterator it = this.attributes.entrySet().iterator();
                        while (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            if (qName.matches((QName) entry.getKey())) {
                                return (AttributeKey) entry.getValue();
                            }
                        }
                    } else if (!qName.matchesAnyLocalName() && (attributeKey = this.attributes.get(toWildcardLocalName(qName))) != null) {
                        return AttributeKey.of(qName, attributeKey.getDatatype());
                    }
                } else {
                    return attributeKey3;
                }
            }
            if (this.adaptations == null || (attributeKeyFindAttribute = this.adaptations.findAttribute(qName)) == null) {
                return null;
            }
            return attributeKeyFindAttribute;
        }
        return attributeKey2;
    }

    @Override // com.google.gdata.model.ElementMetadata
    public boolean isDeclared(ElementKey<?, ?> elementKey) {
        return this.elements.containsKey(elementKey.getId());
    }

    @Override // com.google.gdata.model.ElementMetadata
    public ElementKey<?, ?> findElement(QName qName) {
        ElementKey<?, ?> elementKeyFindElement;
        ElementKey<?, ?> elementKey;
        ElementKey<?, ?> elementKey2;
        if (this.renamedElements.isEmpty() || (elementKey2 = this.renamedElements.get(qName)) == null) {
            if (!this.elements.isEmpty()) {
                ElementKey<?, ?> elementKey3 = this.elements.get(qName);
                if (elementKey3 == null) {
                    if (qName.matchesAnyNamespace()) {
                        Iterator it = this.elements.entrySet().iterator();
                        while (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            if (qName.matches((QName) entry.getKey())) {
                                return (ElementKey) entry.getValue();
                            }
                        }
                    } else if (!qName.matchesAnyLocalName() && (elementKey = this.elements.get(toWildcardLocalName(qName))) != null) {
                        return ElementKey.of(qName, elementKey.getDatatype(), elementKey.getElementType());
                    }
                } else {
                    return elementKey3;
                }
            }
            if (this.adaptations == null || (elementKeyFindElement = this.adaptations.findElement(qName)) == null) {
                return null;
            }
            return elementKeyFindElement;
        }
        return elementKey2;
    }

    @Override // com.google.gdata.model.ElementMetadata
    public ElementMetadata<D, E> bind(MetadataContext metadataContext) {
        return this.schema.bind(this.parent, this.elemKey, metadataContext);
    }

    @Override // com.google.gdata.model.MetadataImpl, com.google.gdata.model.Metadata
    public ElementKey<D, E> getKey() {
        return this.elemKey;
    }

    @Override // com.google.gdata.model.ElementMetadata
    public ElementMetadata.Cardinality getCardinality() {
        return this.cardinality;
    }

    @Override // com.google.gdata.model.ElementMetadata
    public boolean isContentRequired() {
        return this.isContentRequired;
    }

    @Override // com.google.gdata.model.ElementMetadata
    public boolean isReferenced() {
        return isVisible();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public boolean isSelected(Element element) {
        return isVisible();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public boolean isFlattened() {
        return this.isFlattened;
    }

    @Override // com.google.gdata.model.ElementMetadata
    public Object getProperties() {
        return this.properties;
    }

    @Override // com.google.gdata.model.ElementMetadata
    public ElementValidator getValidator() {
        return this.validator;
    }

    @Override // com.google.gdata.model.ElementMetadata
    public void validate(ValidationContext validationContext, Element element) {
        if (this.validator != null) {
            this.validator.validate(validationContext, element, this);
        }
    }

    public Iterator<Attribute> getAttributeIterator(Element element) {
        return element.getAttributeIterator(this);
    }

    @Override // com.google.gdata.model.ElementMetadata
    public ImmutableCollection<AttributeKey<?>> getAttributes() {
        return this.attributes.values();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public <K> AttributeMetadata<K> bindAttribute(AttributeKey<K> attributeKey) {
        return this.schema.bind((ElementKey<?, ?>) this.sourceKey, (AttributeKey) attributeKey, this.context);
    }

    public Iterator<Element> getElementIterator(Element element) {
        return element.getElementIterator(this);
    }

    @Override // com.google.gdata.model.ElementMetadata
    public ImmutableCollection<ElementKey<?, ?>> getElements() {
        return this.elements.values();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public <K, L extends Element> ElementMetadata<K, L> bindElement(ElementKey<K, L> elementKey) {
        return this.schema.bind((ElementKey<?, ?>) this.sourceKey, (ElementKey) elementKey, this.context);
    }

    @Override // com.google.gdata.model.MetadataImpl, com.google.gdata.model.Metadata
    public Object generateValue(Element element, ElementMetadata<?, ?> elementMetadata) {
        Object objGenerateValue = super.generateValue(element, elementMetadata);
        if (objGenerateValue == null) {
            return element.getTextValue(this.elemKey);
        }
        return objGenerateValue;
    }

    @Override // com.google.gdata.model.MetadataImpl, com.google.gdata.model.Metadata
    public void parseValue(Element element, ElementMetadata<?, ?> elementMetadata, Object obj) throws ParseException {
        if (!super.parse(element, elementMetadata, obj)) {
            element.setTextValue(ObjectConverter.getValue(obj, this.elemKey.getDatatype()));
        }
    }

    @Override // com.google.gdata.model.ElementMetadata
    public ElementMetadata.SingleVirtualElement getSingleVirtualElement() {
        if (this.cardinality == ElementMetadata.Cardinality.SINGLE && this.virtualElementHolder != null) {
            return this.virtualElementHolder.getSingleVirtualElement();
        }
        return null;
    }

    @Override // com.google.gdata.model.ElementMetadata
    public ElementMetadata.MultipleVirtualElement getMultipleVirtualElement() {
        if (this.cardinality == ElementMetadata.Cardinality.SINGLE || this.virtualElementHolder == null) {
            return null;
        }
        return this.virtualElementHolder.getMultipleVirtualElement();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public E createElement() throws ContentCreationException {
        return (E) Element.createElement(this.elemKey);
    }

    @Override // com.google.gdata.model.ElementMetadata
    public XmlNamespace getDefaultNamespace() {
        return getName().getNs();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public Collection<XmlNamespace> getReferencedNamespaces() {
        if (this.referencedNamespaces == null) {
            ImmutableSet.Builder builder = ImmutableSet.builder();
            addReferencedNamespaces(this, builder, Sets.newHashSet());
            this.referencedNamespaces = builder.build();
        }
        return this.referencedNamespaces;
    }

    private static void addReferencedNamespaces(ElementMetadata<?, ?> elementMetadata, ImmutableSet.Builder<XmlNamespace> builder, Set<ElementKey<?, ?>> set) {
        if (!set.contains(elementMetadata.getKey())) {
            set.add(elementMetadata.getKey());
            XmlNamespace ns = elementMetadata.getName().getNs();
            if (ns != null) {
                builder.add(ns);
            }
            Iterator<AttributeKey<?>> it = elementMetadata.getAttributes().iterator();
            while (it.hasNext()) {
                XmlNamespace ns2 = elementMetadata.bindAttribute(it.next()).getName().getNs();
                if (ns2 != null) {
                    builder.add(ns2);
                }
            }
            Iterator<ElementKey<?, ?>> it2 = elementMetadata.getElements().iterator();
            while (it2.hasNext()) {
                addReferencedNamespaces(elementMetadata.bindElement(it2.next()), builder, set);
            }
        }
    }

    private QName toWildcardLocalName(QName qName) {
        return new QName(qName.getNs(), "*");
    }
}
