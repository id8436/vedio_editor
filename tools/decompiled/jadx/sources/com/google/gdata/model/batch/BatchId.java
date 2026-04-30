package com.google.gdata.model.batch;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.util.Namespaces;

/* JADX INFO: loaded from: classes3.dex */
public class BatchId extends Element {
    public static final ElementKey<String, BatchId> KEY = ElementKey.of(new QName(Namespaces.batchNs, "id"), String.class, BatchId.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public static String getIdFrom(Element element) {
        BatchId batchId = (BatchId) element.getElement(KEY);
        if (batchId == null) {
            return null;
        }
        return batchId.getId();
    }

    public BatchId() {
        super(KEY);
    }

    public BatchId(String str) {
        this();
        setId(str);
    }

    public String getId() {
        return (String) super.getTextValue();
    }

    public BatchId setId(String str) {
        super.setTextValue(str);
        return this;
    }

    public boolean hasId() {
        return super.hasTextValue();
    }

    @Override // com.google.gdata.model.Element
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(getId(), ((BatchId) obj).getId());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getId() != null) {
            return (iHashCode * 37) + getId().hashCode();
        }
        return iHashCode;
    }

    @Override // com.google.gdata.model.Element
    public String toString() {
        return "{BatchId id=" + getTextValue() + "}";
    }
}
