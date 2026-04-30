package com.google.gdata.model;

import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadCreateNewFolderMgr;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Lists;
import com.google.common.collect.MapMaker;
import com.google.gdata.util.common.base.Preconditions;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes3.dex */
final class AttributeMetadataRegistry {
    private final ConcurrentMap<TransformKey, AttributeMetadata<?>> cache = new MapMaker().makeMap();
    private final Schema schema;
    private final Map<TransformKey, AttributeTransform> transforms;

    AttributeMetadataRegistry(Schema schema, AttributeMetadataRegistryBuilder attributeMetadataRegistryBuilder) {
        this.schema = schema;
        this.transforms = getTransforms(attributeMetadataRegistryBuilder.getCreators());
    }

    private Map<TransformKey, AttributeTransform> getTransforms(Map<TransformKey, AttributeCreatorImpl> map) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (Map.Entry<TransformKey, AttributeCreatorImpl> entry : map.entrySet()) {
            builder.put(entry.getKey(), entry.getValue().toTransform());
        }
        return builder.build();
    }

    <D> AttributeMetadata<D> bind(ElementKey<?, ?> elementKey, AttributeKey<D> attributeKey, MetadataContext metadataContext) {
        Preconditions.checkNotNull(elementKey, AdobeUploadCreateNewFolderMgr.PARENT_COLLECTION_KEY);
        Preconditions.checkNotNull(attributeKey, "key");
        TransformKey transformKeyForTransform = TransformKey.forTransform(elementKey, attributeKey, metadataContext);
        AttributeMetadata<D> attributeMetadata = (AttributeMetadata) this.cache.get(transformKeyForTransform);
        if (attributeMetadata == null) {
            AttributeMetadata<D> metadata = getTransform(transformKeyForTransform, attributeKey).toMetadata(this.schema, elementKey, attributeKey, metadataContext);
            AttributeMetadata<D> attributeMetadata2 = (AttributeMetadata) this.cache.putIfAbsent(transformKeyForTransform, metadata);
            return attributeMetadata2 != null ? attributeMetadata2 : metadata;
        }
        return attributeMetadata;
    }

    AttributeTransform getTransform(ElementKey<?, ?> elementKey, AttributeKey<?> attributeKey, MetadataContext metadataContext) {
        return getTransform(TransformKey.forTransform(elementKey, attributeKey, metadataContext), attributeKey);
    }

    private AttributeTransform getTransform(TransformKey transformKey, AttributeKey<?> attributeKey) {
        ArrayList arrayListNewArrayList = Lists.newArrayList();
        for (Map.Entry<TransformKey, AttributeTransform> entry : this.transforms.entrySet()) {
            if (entry.getKey().matches(transformKey)) {
                arrayListNewArrayList.add(entry.getValue());
            }
        }
        switch (arrayListNewArrayList.size()) {
            case 0:
                return AttributeTransform.EMPTY;
            case 1:
                return (AttributeTransform) arrayListNewArrayList.get(0);
            default:
                return AttributeTransform.create(arrayListNewArrayList);
        }
    }
}
