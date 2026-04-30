package com.google.gdata.model;

import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadCreateNewFolderMgr;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.gdata.util.common.base.Preconditions;
import java.util.Map;
import java.util.SortedMap;

/* JADX INFO: loaded from: classes3.dex */
final class AttributeMetadataRegistryBuilder {
    private final SortedMap<TransformKey, AttributeCreatorImpl> creators = Maps.newTreeMap();
    private final MetadataRegistry root;

    AttributeMetadataRegistryBuilder(MetadataRegistry metadataRegistry) {
        this.root = metadataRegistry;
    }

    void merge(AttributeMetadataRegistryBuilder attributeMetadataRegistryBuilder) {
        for (Map.Entry<TransformKey, AttributeCreatorImpl> entry : attributeMetadataRegistryBuilder.creators.entrySet()) {
            TransformKey key = entry.getKey();
            AttributeCreatorImpl attributeCreatorImpl = this.creators.get(key);
            if (attributeCreatorImpl == null) {
                attributeCreatorImpl = new AttributeCreatorImpl(this.root, key);
                this.creators.put(key, attributeCreatorImpl);
            }
            attributeCreatorImpl.merge(entry.getValue());
        }
    }

    AttributeMetadataRegistry create(Schema schema) {
        return new AttributeMetadataRegistry(schema, this);
    }

    AttributeCreatorImpl build(ElementKey<?, ?> elementKey, AttributeKey<?> attributeKey, MetadataContext metadataContext) {
        AttributeCreatorImpl attributeCreatorImpl;
        Preconditions.checkNotNull(elementKey, AdobeUploadCreateNewFolderMgr.PARENT_COLLECTION_KEY);
        Preconditions.checkNotNull(attributeKey, "key");
        TransformKey transformKeyForTransform = TransformKey.forTransform(elementKey, attributeKey, metadataContext);
        synchronized (this.root) {
            attributeCreatorImpl = this.creators.get(transformKeyForTransform);
            if (attributeCreatorImpl == null) {
                attributeCreatorImpl = new AttributeCreatorImpl(this.root, transformKeyForTransform);
                this.creators.put(transformKeyForTransform, attributeCreatorImpl);
                this.root.dirty();
            }
        }
        return attributeCreatorImpl;
    }

    Map<TransformKey, AttributeCreatorImpl> getCreators() {
        return ImmutableMap.copyOf((Map) this.creators);
    }
}
