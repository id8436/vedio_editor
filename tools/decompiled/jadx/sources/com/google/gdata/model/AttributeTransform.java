package com.google.gdata.model;

/* JADX INFO: loaded from: classes3.dex */
final class AttributeTransform extends Transform {
    static final AttributeTransform EMPTY = new AttributeTransform();

    static AttributeTransform create(AttributeCreatorImpl attributeCreatorImpl) {
        AttributeTransform attributeTransform = new AttributeTransform(attributeCreatorImpl);
        if (attributeTransform.isEmpty()) {
            return EMPTY;
        }
        return attributeTransform;
    }

    static AttributeTransform create(Iterable<AttributeTransform> iterable) {
        AttributeTransform attributeTransform = new AttributeTransform(iterable);
        if (attributeTransform.isEmpty()) {
            return EMPTY;
        }
        return attributeTransform;
    }

    static Transform mergeSource(Schema schema, Transform transform, MetadataContext metadataContext) {
        Transform transform2;
        TransformKey source = transform.getSource();
        if (source != null && (transform2 = schema.getTransform(source.getParent(), source.getKey(), metadataContext)) != null) {
            return new AttributeTransform(transform, transform2);
        }
        return transform;
    }

    private AttributeTransform() {
    }

    private AttributeTransform(AttributeCreatorImpl attributeCreatorImpl) {
        super(attributeCreatorImpl);
    }

    private AttributeTransform(Iterable<AttributeTransform> iterable) {
        super(iterable);
    }

    private AttributeTransform(Transform transform, Transform transform2) {
        super(transform, transform2);
    }

    <D> AttributeMetadata<D> toMetadata(Schema schema, ElementKey<?, ?> elementKey, AttributeKey<D> attributeKey, MetadataContext metadataContext) {
        return new AttributeMetadataImpl(schema, this, elementKey, attributeKey, metadataContext);
    }
}
