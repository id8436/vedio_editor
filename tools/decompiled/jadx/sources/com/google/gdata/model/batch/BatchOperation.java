package com.google.gdata.model.batch;

import com.google.gdata.data.batch.BatchOperationType;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.util.Namespaces;

/* JADX INFO: loaded from: classes3.dex */
public class BatchOperation extends Element {
    public static final ElementKey<Void, BatchOperation> KEY = ElementKey.of(new QName(Namespaces.batchNs, "operation"), BatchOperation.class);
    public static final AttributeKey<BatchOperationType> TYPE = AttributeKey.of(new QName("type"), BatchOperationType.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY).addAttribute(TYPE).setRequired(true);
        }
    }

    public BatchOperation() {
        super(KEY);
    }

    public BatchOperation(BatchOperationType batchOperationType) {
        this();
        setType(batchOperationType);
    }

    public BatchOperationType getType() {
        return (BatchOperationType) getAttributeValue(TYPE);
    }

    public BatchOperation setType(BatchOperationType batchOperationType) {
        setAttributeValue(TYPE, batchOperationType);
        return this;
    }

    public boolean hasType() {
        return getType() != null;
    }

    @Override // com.google.gdata.model.Element
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(getType(), ((BatchOperation) obj).getType());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getType() != null) {
            return (iHashCode * 37) + getType().hashCode();
        }
        return iHashCode;
    }

    @Override // com.google.gdata.model.Element
    public String toString() {
        return "{BatchOperation type=" + getAttributeValue(TYPE) + "}";
    }
}
