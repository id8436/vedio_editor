package com.google.gdata.model;

import com.google.gdata.util.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
final class TransformKey implements Comparable<TransformKey> {
    private final MetadataContext context;
    private final MetadataKey<?> key;
    private final ElementKey<?, ?> parent;

    static TransformKey forParent(ElementKey<?, ?> elementKey, MetadataKey<?> metadataKey) {
        return forTransform(elementKey, metadataKey, null);
    }

    static TransformKey forKey(MetadataKey<?> metadataKey) {
        return forTransform(null, metadataKey, null);
    }

    static TransformKey forContext(MetadataKey<?> metadataKey, MetadataContext metadataContext) {
        return forTransform(null, metadataKey, metadataContext);
    }

    static TransformKey forTransform(ElementKey<?, ?> elementKey, MetadataKey<?> metadataKey, MetadataContext metadataContext) {
        Preconditions.checkNotNull(metadataKey, "key");
        return new TransformKey(elementKey, metadataKey, metadataContext);
    }

    private TransformKey(ElementKey<?, ?> elementKey, MetadataKey<?> metadataKey, MetadataContext metadataContext) {
        this.parent = elementKey;
        this.key = metadataKey;
        this.context = metadataContext;
    }

    boolean matches(TransformKey transformKey) {
        return (this.parent == null || this.parent.matches(transformKey.parent)) && this.key.matches(transformKey.key) && (this.context == null || this.context.matches(transformKey.context));
    }

    TransformKey bind(TransformKey transformKey) {
        if (transformKey != null) {
            ElementKey<?, ?> parent = transformKey.getParent();
            MetadataKey<?> key = transformKey.getKey();
            MetadataContext context = transformKey.getContext();
            if (parent == this.parent && key == this.key) {
                if (context != null && context.equals(this.context)) {
                    return this;
                }
                if (context == null && this.context == null) {
                    return this;
                }
            }
            if (parent == null) {
                parent = this.parent;
            }
            if (key == null) {
                key = this.key;
            }
            if (context == null) {
                context = this.context;
            }
            return new TransformKey(parent, key, context);
        }
        return this;
    }

    ElementKey<?, ?> getParent() {
        return this.parent;
    }

    MetadataKey<?> getKey() {
        return this.key;
    }

    MetadataContext getContext() {
        return this.context;
    }

    @Override // java.lang.Comparable
    public int compareTo(TransformKey transformKey) {
        if (this == transformKey) {
            return 0;
        }
        if (transformKey == null) {
            return 1;
        }
        int iCompare = compare(this.parent, transformKey.parent);
        if (iCompare == 0) {
            int iCompare2 = compare(this.key, transformKey.key);
            if (iCompare2 == 0) {
                if (this.context == null) {
                    if (transformKey.context != null) {
                        return -1;
                    }
                    return iCompare2;
                }
                if (transformKey.context == null) {
                    return 1;
                }
                return this.context.compareTo(transformKey.context);
            }
            return iCompare2;
        }
        return iCompare;
    }

    static int compare(MetadataKey<?> metadataKey, MetadataKey<?> metadataKey2) {
        if (metadataKey == metadataKey2) {
            return 0;
        }
        if (metadataKey == null) {
            return -1;
        }
        if (metadataKey2 == null) {
            return 1;
        }
        return metadataKey.compareTo(metadataKey2);
    }

    public int hashCode() {
        int iHashCode = this.key.hashCode() * 17;
        if (this.parent != null) {
            iHashCode += this.parent.hashCode();
        }
        int i = iHashCode * 17;
        if (this.context != null) {
            return i + this.context.hashCode();
        }
        return i;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TransformKey)) {
            return false;
        }
        TransformKey transformKey = (TransformKey) obj;
        if (this.parent == null) {
            if (transformKey.parent != null) {
                return false;
            }
        } else if (!this.parent.equals(transformKey.parent)) {
            return false;
        }
        if (this.key.equals(transformKey.key)) {
            return this.context == null ? transformKey.context == null : this.context.equals(transformKey.context);
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{TransformKey(");
        sb.append(this.parent == null ? "null" : this.parent);
        sb.append(',');
        sb.append(this.key == null ? "null" : this.key);
        sb.append(',');
        sb.append(this.context);
        sb.append(")}");
        return sb.toString();
    }
}
