package com.google.gdata.model;

/* JADX INFO: loaded from: classes3.dex */
public interface AttributeMetadata<D> extends Metadata<D> {
    AttributeMetadata<D> bind(MetadataContext metadataContext);

    @Override // com.google.gdata.model.Metadata
    AttributeKey<D> getKey();
}
