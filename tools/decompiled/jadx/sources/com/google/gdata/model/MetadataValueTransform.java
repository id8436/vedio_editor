package com.google.gdata.model;

import com.google.common.collect.Lists;
import com.google.gdata.model.Metadata;
import com.google.gdata.util.ParseException;
import com.google.gdata.wireformats.ContentCreationException;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MetadataValueTransform implements Metadata.VirtualValue {
    private final List<MetadataKey<?>> sources;

    public MetadataValueTransform(MetadataKey<?>... metadataKeyArr) {
        this.sources = Lists.newArrayList(metadataKeyArr);
    }

    @Override // com.google.gdata.model.Metadata.VirtualValue
    public Object generate(Element element, ElementMetadata<?, ?> elementMetadata) {
        for (MetadataKey<?> metadataKey : this.sources) {
            if (metadataKey instanceof ElementKey) {
                ElementKey<K, L> elementKey = (ElementKey) metadataKey;
                Element element2 = element.getElement((ElementKey<D, Element>) elementKey);
                if (element2 == null) {
                    continue;
                } else {
                    ElementMetadata<?, ?> elementMetadataBindElement = elementMetadata == null ? null : elementMetadata.bindElement(elementKey);
                    Object textValue = elementMetadataBindElement == null ? element2.getTextValue() : elementMetadataBindElement.generateValue(element2, elementMetadataBindElement);
                    if (textValue != null) {
                        return textValue;
                    }
                }
            } else {
                AttributeKey<K> attributeKey = (AttributeKey) metadataKey;
                Metadata metadataBindAttribute = elementMetadata == null ? null : elementMetadata.bindAttribute(attributeKey);
                Object attributeValue = metadataBindAttribute == null ? element.getAttributeValue(attributeKey) : metadataBindAttribute.generateValue(element, elementMetadata);
                if (attributeValue != null) {
                    return attributeValue;
                }
            }
        }
        return null;
    }

    @Override // com.google.gdata.model.Metadata.VirtualValue
    public void parse(Element element, ElementMetadata<?, ?> elementMetadata, Object obj) throws ParseException {
        if (!this.sources.isEmpty()) {
            MetadataKey<?> metadataKey = this.sources.get(0);
            if (metadataKey instanceof ElementKey) {
                ElementKey<?, ?> elementKey = (ElementKey) metadataKey;
                ElementMetadata<K, L> elementMetadataBindElement = elementMetadata.bindElement(elementKey);
                Element element2 = element.getElement((ElementKey<D, Element>) elementKey);
                if (element2 == null) {
                    try {
                        element2 = elementMetadataBindElement.createElement();
                        element.addElement(elementKey, element2);
                    } catch (ContentCreationException e2) {
                        throw new ParseException(e2);
                    }
                }
                elementMetadataBindElement.parseValue(element2, elementMetadataBindElement, obj);
                return;
            }
            elementMetadata.bindAttribute((AttributeKey) metadataKey).parseValue(element, elementMetadata, obj);
        }
    }
}
