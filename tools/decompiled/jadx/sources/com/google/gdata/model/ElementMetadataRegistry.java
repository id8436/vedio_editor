package com.google.gdata.model;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Lists;
import com.google.common.collect.MapMaker;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes3.dex */
final class ElementMetadataRegistry {
    private final ConcurrentMap<TransformKey, ElementMetadata<?, ?>> cache = new MapMaker().makeMap();
    private final Schema schema;
    private final Map<TransformKey, ElementTransform> transforms;

    ElementMetadataRegistry(Schema schema, ElementMetadataRegistryBuilder elementMetadataRegistryBuilder) {
        this.schema = schema;
        this.transforms = getTransforms(elementMetadataRegistryBuilder);
    }

    private Map<TransformKey, ElementTransform> getTransforms(ElementMetadataRegistryBuilder elementMetadataRegistryBuilder) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (Map.Entry<TransformKey, ElementCreatorImpl> entry : elementMetadataRegistryBuilder.getCreators().entrySet()) {
            builder.put(entry.getKey(), entry.getValue().toTransform());
        }
        return builder.build();
    }

    <D, E extends Element> ElementMetadata<D, E> bind(ElementKey<?, ?> elementKey, ElementKey<D, E> elementKey2, MetadataContext metadataContext) {
        TransformKey transformKeyForTransform = TransformKey.forTransform(elementKey, elementKey2, metadataContext);
        ElementMetadata<D, E> elementMetadata = (ElementMetadata) this.cache.get(transformKeyForTransform);
        if (elementMetadata == null) {
            ElementMetadata<D, E> metadata = getTransform(transformKeyForTransform, elementKey2).toMetadata(this.schema, elementKey, elementKey2, metadataContext);
            ElementMetadata<D, E> elementMetadata2 = (ElementMetadata) this.cache.putIfAbsent(transformKeyForTransform, metadata);
            return elementMetadata2 != null ? elementMetadata2 : metadata;
        }
        return elementMetadata;
    }

    ElementTransform getTransform(ElementKey<?, ?> elementKey, ElementKey<?, ?> elementKey2, MetadataContext metadataContext) {
        return getTransform(TransformKey.forTransform(elementKey, elementKey2, metadataContext), elementKey2);
    }

    private ElementTransform getTransform(TransformKey transformKey, ElementKey<?, ?> elementKey) {
        ArrayList arrayListNewArrayList = Lists.newArrayList();
        for (Map.Entry<TransformKey, ElementTransform> entry : this.transforms.entrySet()) {
            if (entry.getKey().matches(transformKey)) {
                arrayListNewArrayList.add(entry.getValue());
            }
        }
        switch (arrayListNewArrayList.size()) {
            case 0:
                return ElementTransform.EMPTY;
            case 1:
                return (ElementTransform) arrayListNewArrayList.get(0);
            default:
                return ElementTransform.create(elementKey, arrayListNewArrayList);
        }
    }
}
