package com.google.gdata.model;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.gdata.util.common.base.Preconditions;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class ElementMetadataRegistryBuilder {
    private final Map<TransformKey, ElementCreatorImpl> creators = Maps.newTreeMap();
    private final MetadataRegistry root;

    ElementMetadataRegistryBuilder(MetadataRegistry metadataRegistry) {
        this.root = metadataRegistry;
    }

    void merge(ElementMetadataRegistryBuilder elementMetadataRegistryBuilder) {
        for (Map.Entry<TransformKey, ElementCreatorImpl> entry : elementMetadataRegistryBuilder.creators.entrySet()) {
            TransformKey key = entry.getKey();
            ElementCreatorImpl elementCreatorImpl = this.creators.get(key);
            if (elementCreatorImpl == null) {
                elementCreatorImpl = new ElementCreatorImpl(this.root, key);
                this.creators.put(key, elementCreatorImpl);
            }
            elementCreatorImpl.merge(entry.getValue());
        }
    }

    ElementMetadataRegistry create(Schema schema) {
        return new ElementMetadataRegistry(schema, this);
    }

    boolean isRegistered(ElementKey<?, ?> elementKey, ElementKey<?, ?> elementKey2, MetadataContext metadataContext) {
        Preconditions.checkNotNull(elementKey2, "key");
        return this.creators.containsKey(TransformKey.forTransform(elementKey, elementKey2, metadataContext));
    }

    ElementCreatorImpl build(ElementKey<?, ?> elementKey, ElementKey<?, ?> elementKey2, MetadataContext metadataContext) {
        ElementCreatorImpl elementCreatorImpl;
        Preconditions.checkNotNull(elementKey2, "key");
        TransformKey transformKeyForTransform = TransformKey.forTransform(elementKey, elementKey2, metadataContext);
        synchronized (this.root) {
            elementCreatorImpl = this.creators.get(transformKeyForTransform);
            if (elementCreatorImpl == null) {
                elementCreatorImpl = new ElementCreatorImpl(this.root, transformKeyForTransform);
                this.creators.put(transformKeyForTransform, elementCreatorImpl);
                this.root.dirty();
            }
        }
        return elementCreatorImpl;
    }

    Map<TransformKey, ElementCreatorImpl> getCreators() {
        return ImmutableMap.copyOf((Map) this.creators);
    }
}
