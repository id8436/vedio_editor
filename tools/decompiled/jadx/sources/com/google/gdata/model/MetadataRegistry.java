package com.google.gdata.model;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.gdata.model.Schema;
import com.google.gdata.util.common.base.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class MetadataRegistry {
    private final Map<Schema.RootKey, AttributeMetadataRegistryBuilder> attributes;
    private volatile Schema cachedSchema;
    private final Map<Schema.RootKey, ElementMetadataRegistryBuilder> elements;

    public MetadataRegistry() {
        this.attributes = Maps.newHashMap();
        this.elements = Maps.newHashMap();
    }

    public MetadataRegistry(MetadataRegistry metadataRegistry) {
        this();
        merge(metadataRegistry);
    }

    public synchronized MetadataRegistry merge(MetadataRegistry metadataRegistry) {
        synchronized (metadataRegistry) {
            for (Map.Entry<Schema.RootKey, AttributeMetadataRegistryBuilder> entry : metadataRegistry.attributes.entrySet()) {
                Schema.RootKey key = entry.getKey();
                AttributeMetadataRegistryBuilder attributeMetadataRegistryBuilder = this.attributes.get(key);
                if (attributeMetadataRegistryBuilder == null) {
                    attributeMetadataRegistryBuilder = new AttributeMetadataRegistryBuilder(this);
                    this.attributes.put(key, attributeMetadataRegistryBuilder);
                }
                attributeMetadataRegistryBuilder.merge(entry.getValue());
            }
            for (Map.Entry<Schema.RootKey, ElementMetadataRegistryBuilder> entry2 : metadataRegistry.elements.entrySet()) {
                Schema.RootKey key2 = entry2.getKey();
                ElementMetadataRegistryBuilder elementMetadataRegistryBuilder = this.elements.get(key2);
                if (elementMetadataRegistryBuilder == null) {
                    elementMetadataRegistryBuilder = new ElementMetadataRegistryBuilder(this);
                    this.elements.put(key2, elementMetadataRegistryBuilder);
                }
                elementMetadataRegistryBuilder.merge(entry2.getValue());
            }
        }
        return this;
    }

    public MetadataRegistry register(ElementKey<?, ?> elementKey) {
        if (elementKey != null) {
            Class<? extends Element> elementType = elementKey.getElementType();
            if (Element.class == elementType) {
                build(elementKey);
            } else {
                registerClass(elementType);
            }
        }
        return this;
    }

    public synchronized MetadataRegistry registerClass(Class<? extends Element> cls) {
        MetadataRegistry metadataRegistry;
        if (Element.class == cls) {
            metadataRegistry = this;
        } else {
            try {
                try {
                    Method declaredMethod = cls.getDeclaredMethod("registerMetadata", MetadataRegistry.class);
                    if (!Modifier.isStatic(declaredMethod.getModifiers())) {
                        throw new IllegalArgumentException("Class " + cls + " had a non-static registerMetadata(MetadataRegistry) method.");
                    }
                    declaredMethod.invoke(null, this);
                    metadataRegistry = this;
                } catch (NoSuchMethodException e2) {
                    throw new IllegalArgumentException("Class " + cls + " doesn't support metadata registration.", e2);
                } catch (SecurityException e3) {
                    throw new IllegalArgumentException(e3);
                }
            } catch (IllegalAccessException e4) {
                throw new IllegalArgumentException(e4);
            } catch (InvocationTargetException e5) {
                throw new IllegalArgumentException(e5.getCause());
            }
        }
        return metadataRegistry;
    }

    public Schema createSchema() {
        Schema schema = this.cachedSchema;
        return schema != null ? schema : buildSchema();
    }

    private synchronized Schema buildSchema() {
        Schema schema;
        schema = this.cachedSchema;
        if (schema == null) {
            whitelistAttributes();
            whitelistElements();
            schema = new Schema(this);
            this.cachedSchema = schema;
        }
        return schema;
    }

    void dirty() {
        Preconditions.checkState(Thread.holdsLock(this), "Cannot call dirty() without holding the lock on the registry.");
        this.cachedSchema = null;
    }

    private void whitelistAttributes() {
        for (ElementMetadataRegistryBuilder elementMetadataRegistryBuilder : this.elements.values()) {
            LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
            Map<TransformKey, ElementCreatorImpl> creators = elementMetadataRegistryBuilder.getCreators();
            for (Map.Entry<TransformKey, ElementCreatorImpl> entry : creators.entrySet()) {
                TransformKey key = entry.getKey();
                ElementCreatorImpl value = entry.getValue();
                if (value.getAttributeWhitelist() != null) {
                    linkedHashMapNewLinkedHashMap.put(key, value.getAttributeWhitelist());
                }
            }
            for (Map.Entry entry2 : linkedHashMapNewLinkedHashMap.entrySet()) {
                TransformKey transformKey = (TransformKey) entry2.getKey();
                Set set = (Set) entry2.getValue();
                HashSet hashSetNewHashSet = Sets.newHashSet();
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    hashSetNewHashSet.add(((AttributeKey) it.next()).getId());
                }
                HashSet<AttributeKey<?>> hashSetNewHashSet2 = Sets.newHashSet();
                for (Map.Entry<TransformKey, ElementCreatorImpl> entry3 : creators.entrySet()) {
                    if (entry3.getKey().matches(transformKey)) {
                        hashSetNewHashSet2.addAll(entry3.getValue().getAttributeSet());
                    }
                }
                if (!hashSetNewHashSet2.containsAll(set)) {
                    HashSet hashSetNewHashSet3 = Sets.newHashSet(set);
                    hashSetNewHashSet3.removeAll(hashSetNewHashSet2);
                    throw new IllegalStateException("Missing attributes!  Whitelist specified " + hashSetNewHashSet3 + " but did not find those attributes.");
                }
                for (AttributeKey<?> attributeKey : hashSetNewHashSet2) {
                    if (!hashSetNewHashSet.contains(attributeKey.getId())) {
                        build((ElementKey<?, ?>) transformKey.getKey(), attributeKey, transformKey.getContext()).setVisible(false);
                    }
                }
            }
        }
    }

    private void whitelistElements() {
        Iterator<Map.Entry<Schema.RootKey, ElementMetadataRegistryBuilder>> it = this.elements.entrySet().iterator();
        while (it.hasNext()) {
            ElementMetadataRegistryBuilder value = it.next().getValue();
            LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
            Map<TransformKey, ElementCreatorImpl> creators = value.getCreators();
            for (Map.Entry<TransformKey, ElementCreatorImpl> entry : creators.entrySet()) {
                TransformKey key = entry.getKey();
                ElementCreatorImpl value2 = entry.getValue();
                if (value2.getElementWhitelist() != null) {
                    linkedHashMapNewLinkedHashMap.put(key, value2.getElementWhitelist());
                }
            }
            for (Map.Entry entry2 : linkedHashMapNewLinkedHashMap.entrySet()) {
                TransformKey transformKey = (TransformKey) entry2.getKey();
                Set set = (Set) entry2.getValue();
                HashSet hashSetNewHashSet = Sets.newHashSet();
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    hashSetNewHashSet.add(((ElementKey) it2.next()).getId());
                }
                HashSet<ElementKey<?, ?>> hashSetNewHashSet2 = Sets.newHashSet();
                for (Map.Entry<TransformKey, ElementCreatorImpl> entry3 : creators.entrySet()) {
                    if (entry3.getKey().matches(transformKey)) {
                        hashSetNewHashSet2.addAll(entry3.getValue().getElementSet());
                    }
                }
                if (!hashSetNewHashSet2.containsAll(set)) {
                    HashSet hashSetNewHashSet3 = Sets.newHashSet(set);
                    hashSetNewHashSet3.removeAll(hashSetNewHashSet2);
                    throw new IllegalStateException("Missing children!  Whitelist specified " + hashSetNewHashSet3 + " but did not find those child elements.");
                }
                for (ElementKey<?, ?> elementKey : hashSetNewHashSet2) {
                    if (!hashSetNewHashSet.contains(elementKey.getId())) {
                        build((ElementKey<?, ?>) transformKey.getKey(), elementKey, transformKey.getContext()).setVisible(false);
                    }
                }
            }
        }
    }

    public boolean isRegistered(ElementKey<?, ?> elementKey) {
        ElementMetadataRegistryBuilder elementMetadataRegistryBuilder = this.elements.get(Schema.getRootKey(elementKey));
        if (elementMetadataRegistryBuilder != null) {
            return elementMetadataRegistryBuilder.isRegistered(null, elementKey, null);
        }
        return false;
    }

    public ElementCreator build(ElementKey<?, ?> elementKey) {
        return build((ElementKey<?, ?>) null, elementKey, (MetadataContext) null);
    }

    public ElementCreator build(ElementKey<?, ?> elementKey, ElementKey<?, ?> elementKey2) {
        return build(elementKey, elementKey2, (MetadataContext) null);
    }

    public ElementCreator build(ElementKey<?, ?> elementKey, MetadataContext metadataContext) {
        return build((ElementKey<?, ?>) null, elementKey, metadataContext);
    }

    public ElementCreator build(ElementKey<?, ?> elementKey, ElementKey<?, ?> elementKey2, MetadataContext metadataContext) {
        ElementCreatorImpl elementCreatorImplBuild = getOrCreateElement(elementKey2).build(elementKey, elementKey2, metadataContext);
        if (elementKey != null || metadataContext != null) {
            register(elementKey2);
        }
        return elementCreatorImplBuild;
    }

    private synchronized ElementMetadataRegistryBuilder getOrCreateElement(ElementKey<?, ?> elementKey) {
        ElementMetadataRegistryBuilder elementMetadataRegistryBuilder;
        Schema.RootKey rootKey = Schema.getRootKey(elementKey);
        elementMetadataRegistryBuilder = this.elements.get(rootKey);
        if (elementMetadataRegistryBuilder == null) {
            elementMetadataRegistryBuilder = new ElementMetadataRegistryBuilder(this);
            this.elements.put(rootKey, elementMetadataRegistryBuilder);
        }
        dirty();
        return elementMetadataRegistryBuilder;
    }

    public AttributeCreator build(ElementKey<?, ?> elementKey, AttributeKey<?> attributeKey) {
        return build(elementKey, attributeKey, (MetadataContext) null);
    }

    public AttributeCreator build(ElementKey<?, ?> elementKey, AttributeKey<?> attributeKey, MetadataContext metadataContext) {
        return getOrCreateAttribute(attributeKey).build(elementKey, attributeKey, metadataContext);
    }

    private synchronized AttributeMetadataRegistryBuilder getOrCreateAttribute(AttributeKey<?> attributeKey) {
        AttributeMetadataRegistryBuilder attributeMetadataRegistryBuilder;
        Schema.RootKey rootKey = Schema.getRootKey(attributeKey);
        attributeMetadataRegistryBuilder = this.attributes.get(rootKey);
        if (attributeMetadataRegistryBuilder == null) {
            attributeMetadataRegistryBuilder = new AttributeMetadataRegistryBuilder(this);
            this.attributes.put(rootKey, attributeMetadataRegistryBuilder);
        }
        dirty();
        return attributeMetadataRegistryBuilder;
    }

    public <D, E extends Element> void adapt(ElementKey<D, E> elementKey, String str, ElementKey<? extends D, ? extends E> elementKey2) {
        build(elementKey).adapt(str, elementKey2);
    }

    Map<Schema.RootKey, AttributeMetadataRegistryBuilder> getAttributes() {
        return ImmutableMap.copyOf((Map) this.attributes);
    }

    Map<Schema.RootKey, ElementMetadataRegistryBuilder> getElements() {
        return ImmutableMap.copyOf((Map) this.elements);
    }
}
