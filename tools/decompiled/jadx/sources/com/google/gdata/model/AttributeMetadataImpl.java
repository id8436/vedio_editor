package com.google.gdata.model;

import com.google.gdata.util.ParseException;
import com.google.gdata.wireformats.ObjectConverter;

/* JADX INFO: loaded from: classes3.dex */
final class AttributeMetadataImpl<D> extends MetadataImpl<D> implements AttributeMetadata<D> {
    private final AttributeKey<D> attKey;

    AttributeMetadataImpl(Schema schema, AttributeTransform attributeTransform, ElementKey<?, ?> elementKey, AttributeKey<D> attributeKey, MetadataContext metadataContext) {
        super(schema, attributeTransform, elementKey, attributeKey, metadataContext);
        this.attKey = attributeKey;
    }

    @Override // com.google.gdata.model.AttributeMetadata
    public AttributeMetadata<D> bind(MetadataContext metadataContext) {
        return this.schema.bind(this.parent, this.attKey, metadataContext);
    }

    @Override // com.google.gdata.model.MetadataImpl, com.google.gdata.model.Metadata
    public AttributeKey<D> getKey() {
        return this.attKey;
    }

    @Override // com.google.gdata.model.MetadataImpl, com.google.gdata.model.Metadata
    public Object generateValue(Element element, ElementMetadata<?, ?> elementMetadata) {
        Object objGenerateValue = super.generateValue(element, elementMetadata);
        if (objGenerateValue == null) {
            return element.getAttributeValue(this.attKey);
        }
        return objGenerateValue;
    }

    @Override // com.google.gdata.model.MetadataImpl, com.google.gdata.model.Metadata
    public void parseValue(Element element, ElementMetadata<?, ?> elementMetadata, Object obj) throws ParseException {
        if (!super.parse(element, elementMetadata, obj)) {
            element.setAttributeValue((AttributeKey<?>) this.attKey, ObjectConverter.getValue(obj, this.attKey.getDatatype()));
        }
    }
}
