package com.google.gdata.model;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.wireformats.ContentCreationException;
import java.util.Collection;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ForwardingElementMetadata<D, E extends Element> implements ElementMetadata<D, E> {
    protected abstract ElementMetadata<D, E> delegate();

    @Override // com.google.gdata.model.ElementMetadata
    public ElementKey<?, ?> adapt(String str) {
        return delegate().adapt(str);
    }

    @Override // com.google.gdata.model.ElementMetadata
    public ElementMetadata<D, E> bind(MetadataContext metadataContext) {
        return delegate().bind(metadataContext);
    }

    @Override // com.google.gdata.model.ElementMetadata
    public <K> AttributeMetadata<K> bindAttribute(AttributeKey<K> attributeKey) {
        return delegate().bindAttribute(attributeKey);
    }

    @Override // com.google.gdata.model.ElementMetadata
    public <K, L extends Element> ElementMetadata<K, L> bindElement(ElementKey<K, L> elementKey) {
        return delegate().bindElement(elementKey);
    }

    @Override // com.google.gdata.model.ElementMetadata
    public E createElement() throws ContentCreationException {
        return (E) delegate().createElement();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public AttributeKey<?> findAttribute(QName qName) {
        return delegate().findAttribute(qName);
    }

    @Override // com.google.gdata.model.ElementMetadata
    public ElementKey<?, ?> findElement(QName qName) {
        return delegate().findElement(qName);
    }

    @Override // com.google.gdata.model.ElementMetadata
    public Collection<AttributeKey<?>> getAttributes() {
        return delegate().getAttributes();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public ElementMetadata.Cardinality getCardinality() {
        return delegate().getCardinality();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public Collection<ElementKey<?, ?>> getElements() {
        return delegate().getElements();
    }

    @Override // com.google.gdata.model.Metadata
    public ElementKey<D, E> getKey() {
        return delegate().getKey();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public Object getProperties() {
        return delegate().getProperties();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public ElementValidator getValidator() {
        return delegate().getValidator();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public boolean isContentRequired() {
        return delegate().isContentRequired();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public boolean isDeclared(AttributeKey<?> attributeKey) {
        return delegate().isDeclared(attributeKey);
    }

    @Override // com.google.gdata.model.ElementMetadata
    public boolean isDeclared(ElementKey<?, ?> elementKey) {
        return delegate().isDeclared(elementKey);
    }

    @Override // com.google.gdata.model.ElementMetadata
    public boolean isReferenced() {
        return delegate().isReferenced();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public boolean isSelected(Element element) {
        return delegate().isSelected(element);
    }

    @Override // com.google.gdata.model.ElementMetadata
    public boolean isFlattened() {
        return delegate().isFlattened();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public void validate(ValidationContext validationContext, Element element) {
        delegate().validate(validationContext, element);
    }

    @Override // com.google.gdata.model.Metadata
    public Object generateValue(Element element, ElementMetadata<?, ?> elementMetadata) {
        return delegate().generateValue(element, elementMetadata);
    }

    @Override // com.google.gdata.model.Metadata
    public MetadataContext getContext() {
        return delegate().getContext();
    }

    @Override // com.google.gdata.model.Metadata
    public QName getName() {
        return delegate().getName();
    }

    @Override // com.google.gdata.model.Metadata
    public ElementKey<?, ?> getParent() {
        return delegate().getParent();
    }

    @Override // com.google.gdata.model.Metadata
    public Schema getSchema() {
        return delegate().getSchema();
    }

    @Override // com.google.gdata.model.Metadata
    public boolean isRequired() {
        return delegate().isRequired();
    }

    @Override // com.google.gdata.model.Metadata
    public boolean isVisible() {
        return delegate().isVisible();
    }

    @Override // com.google.gdata.model.Metadata
    public void parseValue(Element element, ElementMetadata<?, ?> elementMetadata, Object obj) throws ParseException {
        delegate().parseValue(element, elementMetadata, obj);
    }

    @Override // com.google.gdata.model.ElementMetadata
    public ElementMetadata.MultipleVirtualElement getMultipleVirtualElement() {
        return delegate().getMultipleVirtualElement();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public ElementMetadata.SingleVirtualElement getSingleVirtualElement() {
        return delegate().getSingleVirtualElement();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public XmlNamespace getDefaultNamespace() {
        return delegate().getDefaultNamespace();
    }

    @Override // com.google.gdata.model.ElementMetadata
    public Collection<XmlNamespace> getReferencedNamespaces() {
        return delegate().getReferencedNamespaces();
    }
}
