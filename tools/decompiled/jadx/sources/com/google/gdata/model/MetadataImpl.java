package com.google.gdata.model;

import com.google.gdata.model.Metadata;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
abstract class MetadataImpl<D> implements Metadata<D> {
    final MetadataContext context;
    private final boolean isRequired;
    private final boolean isVisible;
    final MetadataKey<D> key;
    private final QName name;
    final ElementKey<?, ?> parent;
    final Schema schema;
    private final Metadata.VirtualValue virtualValue;

    MetadataImpl(Schema schema, Transform transform, ElementKey<?, ?> elementKey, MetadataKey<D> metadataKey, MetadataContext metadataContext) {
        this.schema = (Schema) Preconditions.checkNotNull(schema, "schema");
        this.key = (MetadataKey) Preconditions.checkNotNull(metadataKey, "key");
        this.parent = elementKey;
        this.context = metadataContext;
        Transform transformMergeSource = AttributeTransform.mergeSource(schema, transform, metadataContext);
        this.name = (QName) firstNonNull(transformMergeSource.getName(), metadataKey.getId());
        this.isRequired = ((Boolean) firstNonNull(transformMergeSource.getRequired(), false)).booleanValue();
        Path path = transformMergeSource.getPath();
        if (transformMergeSource.isMoved()) {
            this.isVisible = false;
        } else if (path != null) {
            this.isVisible = isVisible(path, schema, elementKey, metadataContext);
        } else {
            this.isVisible = ((Boolean) firstNonNull(transformMergeSource.getVisible(), true)).booleanValue();
        }
        this.virtualValue = transformMergeSource.getVirtualValue();
    }

    static boolean isVisible(Path path, Schema schema, ElementKey<?, ?> elementKey, MetadataContext metadataContext) {
        for (MetadataKey<?> metadataKey : path.getSteps()) {
            Boolean visible = schema.getTransform(elementKey, metadataKey, metadataContext).getVisible();
            if (visible != null && !visible.booleanValue()) {
                return false;
            }
            if (metadataKey instanceof ElementKey) {
                elementKey = (ElementKey) metadataKey;
            }
        }
        return true;
    }

    static <T> T firstNonNull(T... tArr) {
        for (T t : tArr) {
            if (t != null) {
                return t;
            }
        }
        throw new IllegalArgumentException("Values must contain at least a single non-null value.");
    }

    @Override // com.google.gdata.model.Metadata
    public Schema getSchema() {
        return this.schema;
    }

    @Override // com.google.gdata.model.Metadata
    public MetadataKey<D> getKey() {
        return this.key;
    }

    @Override // com.google.gdata.model.Metadata
    public ElementKey<?, ?> getParent() {
        return this.parent;
    }

    @Override // com.google.gdata.model.Metadata
    public MetadataContext getContext() {
        return this.context;
    }

    @Override // com.google.gdata.model.Metadata
    public QName getName() {
        return this.name;
    }

    @Override // com.google.gdata.model.Metadata
    public boolean isRequired() {
        return this.isRequired;
    }

    @Override // com.google.gdata.model.Metadata
    public boolean isVisible() {
        return this.isVisible;
    }

    @Override // com.google.gdata.model.Metadata
    public Object generateValue(Element element, ElementMetadata<?, ?> elementMetadata) {
        if (this.virtualValue != null) {
            return this.virtualValue.generate(element, elementMetadata);
        }
        return null;
    }

    @Override // com.google.gdata.model.Metadata
    public void parseValue(Element element, ElementMetadata<?, ?> elementMetadata, Object obj) throws ParseException {
        parse(element, elementMetadata, obj);
    }

    boolean parse(Element element, ElementMetadata<?, ?> elementMetadata, Object obj) throws ParseException {
        if (this.virtualValue == null) {
            return false;
        }
        this.virtualValue.parse(element, elementMetadata, obj);
        return true;
    }

    public String toString() {
        return getClass().getSimpleName() + "{" + getKey() + "}@" + Integer.toHexString(hashCode());
    }
}
