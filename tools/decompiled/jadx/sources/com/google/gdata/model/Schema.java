package com.google.gdata.model;

import com.google.common.collect.ImmutableMap;
import com.google.gdata.util.common.base.Preconditions;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class Schema {
    private final Map<RootKey, AttributeMetadataRegistry> attributes;
    private final Map<RootKey, ElementMetadataRegistry> elements;

    public static MetadataRegistry builder() {
        return new MetadataRegistry();
    }

    static RootKey getRootKey(ElementKey<?, ?> elementKey) {
        return RootKey.get(elementKey);
    }

    static RootKey getRootKey(AttributeKey<?> attributeKey) {
        return RootKey.get(attributeKey);
    }

    Schema(MetadataRegistry metadataRegistry) {
        this.elements = buildElements(metadataRegistry, this);
        this.attributes = buildAttributes(metadataRegistry, this);
    }

    private static ImmutableMap<RootKey, AttributeMetadataRegistry> buildAttributes(MetadataRegistry metadataRegistry, Schema schema) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (Map.Entry<RootKey, AttributeMetadataRegistryBuilder> entry : metadataRegistry.getAttributes().entrySet()) {
            builder.put(entry.getKey(), entry.getValue().create(schema));
        }
        return builder.build();
    }

    private static ImmutableMap<RootKey, ElementMetadataRegistry> buildElements(MetadataRegistry metadataRegistry, Schema schema) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (Map.Entry<RootKey, ElementMetadataRegistryBuilder> entry : metadataRegistry.getElements().entrySet()) {
            builder.put(entry.getKey(), entry.getValue().create(schema));
        }
        return builder.build();
    }

    public <D, E extends Element> ElementMetadata<D, E> bind(ElementKey<D, E> elementKey) {
        return bind((ElementKey<?, ?>) null, elementKey, (MetadataContext) null);
    }

    public <D, E extends Element> ElementMetadata<D, E> bind(ElementKey<D, E> elementKey, MetadataContext metadataContext) {
        return bind((ElementKey<?, ?>) null, elementKey, metadataContext);
    }

    public <D, E extends Element> ElementMetadata<D, E> bind(ElementKey<?, ?> elementKey, ElementKey<D, E> elementKey2) {
        return bind(elementKey, elementKey2, (MetadataContext) null);
    }

    public <D, E extends Element> ElementMetadata<D, E> bind(ElementKey<?, ?> elementKey, ElementKey<D, E> elementKey2, MetadataContext metadataContext) {
        ElementMetadataRegistry element = getElement(elementKey2);
        if (element == null) {
            return null;
        }
        return element.bind(elementKey, elementKey2, metadataContext);
    }

    Transform getTransform(ElementKey<?, ?> elementKey, MetadataKey<?> metadataKey, MetadataContext metadataContext) {
        return metadataKey instanceof AttributeKey ? getTransform(elementKey, (AttributeKey<?>) metadataKey, metadataContext) : getTransform(elementKey, (ElementKey<?, ?>) metadataKey, metadataContext);
    }

    AttributeTransform getTransform(ElementKey<?, ?> elementKey, AttributeKey<?> attributeKey, MetadataContext metadataContext) {
        AttributeMetadataRegistry attribute = getAttribute(attributeKey);
        if (attribute == null) {
            return null;
        }
        return attribute.getTransform(elementKey, attributeKey, metadataContext);
    }

    ElementTransform getTransform(ElementKey<?, ?> elementKey, ElementKey<?, ?> elementKey2, MetadataContext metadataContext) {
        ElementMetadataRegistry element = getElement(elementKey2);
        if (element == null) {
            return null;
        }
        return element.getTransform(elementKey, elementKey2, metadataContext);
    }

    private ElementMetadataRegistry getElement(ElementKey<?, ?> elementKey) {
        return this.elements.get(getRootKey(elementKey));
    }

    public <D> AttributeMetadata<D> bind(ElementKey<?, ?> elementKey, AttributeKey<D> attributeKey) {
        return bind(elementKey, attributeKey, (MetadataContext) null);
    }

    public <D> AttributeMetadata<D> bind(ElementKey<?, ?> elementKey, AttributeKey<D> attributeKey, MetadataContext metadataContext) {
        AttributeMetadataRegistry attribute = getAttribute(attributeKey);
        if (attribute == null) {
            return null;
        }
        return attribute.bind(elementKey, attributeKey, metadataContext);
    }

    private AttributeMetadataRegistry getAttribute(AttributeKey<?> attributeKey) {
        return this.attributes.get(getRootKey(attributeKey));
    }

    class RootKey {
        private final QName id;
        private final Class<?> type;

        /* JADX INFO: Access modifiers changed from: private */
        public static RootKey get(ElementKey<?, ?> elementKey) {
            QName id = elementKey.getId();
            Class<? extends Element> elementType = elementKey.getElementType();
            if (elementType == Element.class) {
                return new RootKey(getRootId(id));
            }
            for (Class<? extends Element> cls = getSuper(elementType); cls != Element.class; cls = getSuper(cls)) {
                elementType = cls;
            }
            return new RootKey(elementType);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static RootKey get(AttributeKey<?> attributeKey) {
            return new RootKey(getRootId(attributeKey.getId()));
        }

        private static QName getRootId(QName qName) {
            if (qName.getNs() != null && !"*".equals(qName.getLocalName())) {
                return new QName(qName.getNs(), "*");
            }
            return qName;
        }

        private static Class<? extends Element> getSuper(Class<? extends Element> cls) {
            return cls.getSuperclass().asSubclass(Element.class);
        }

        private RootKey(QName qName) {
            Preconditions.checkNotNull(qName);
            this.id = qName;
            this.type = null;
        }

        private RootKey(Class<?> cls) {
            Preconditions.checkNotNull(cls);
            this.id = null;
            this.type = cls;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RootKey)) {
                return false;
            }
            RootKey rootKey = (RootKey) obj;
            if (this.type != null) {
                return this.type == rootKey.type;
            }
            return this.id.equals(rootKey.id);
        }

        public int hashCode() {
            return this.type != null ? this.type.hashCode() : this.id.hashCode();
        }

        public String toString() {
            return this.type == null ? "{Root (" + this.id + ")}" : "{Root (" + this.type + ")}";
        }
    }
}
