package com.google.gdata.model;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.gdata.model.ElementCreatorImpl;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
class AdaptationRegistryFactory {
    private static final Logger logger = Logger.getLogger(AdaptationRegistryFactory.class.getName());

    static AdaptationRegistry create(Schema schema, ElementTransform elementTransform) {
        return new AdaptationRegistry(elementTransform.getAdaptations(), unionAttributes(schema, elementTransform), unionElements(schema, elementTransform));
    }

    private static Map<QName, AttributeKey<?>> unionAttributes(Schema schema, ElementTransform elementTransform) {
        LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
        Set<QName> attributeNames = getAttributeNames(elementTransform);
        HashSet hashSetNewHashSet = Sets.newHashSet();
        for (ElementKey<?, ?> elementKey : elementTransform.getAdaptations().values()) {
            ElementTransform transform = schema.getTransform((ElementKey<?, ?>) null, elementKey, (MetadataContext) null);
            if (transform == null) {
                throw new IllegalStateException("Invalid adaptor key " + elementKey);
            }
            Iterator<ElementCreatorImpl.AttributeInfo> it = transform.getAttributes().values().iterator();
            while (it.hasNext()) {
                AttributeKey<?> attributeKey = it.next().key;
                QName id = attributeKey.getId();
                if (!attributeNames.contains(id) && !hashSetNewHashSet.contains(id)) {
                    AttributeKey attributeKey2 = (AttributeKey) linkedHashMapNewLinkedHashMap.get(id);
                    if (attributeKey2 != null) {
                        if (!checkCompatible(attributeKey2, attributeKey)) {
                            linkedHashMapNewLinkedHashMap.remove(id);
                            hashSetNewHashSet.add(id);
                        }
                    } else {
                        linkedHashMapNewLinkedHashMap.put(id, attributeKey);
                    }
                }
            }
        }
        return ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
    }

    private static Set<QName> getAttributeNames(ElementTransform elementTransform) {
        HashSet hashSetNewHashSet = Sets.newHashSet();
        Iterator<ElementCreatorImpl.AttributeInfo> it = elementTransform.getAttributes().values().iterator();
        while (it.hasNext()) {
            hashSetNewHashSet.add(it.next().key.getId());
        }
        return hashSetNewHashSet;
    }

    private static Map<QName, ElementKey<?, ?>> unionElements(Schema schema, ElementTransform elementTransform) {
        LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
        HashSet hashSetNewHashSet = Sets.newHashSet();
        Set<QName> elementNames = getElementNames(elementTransform);
        Iterator<ElementKey<?, ?>> it = elementTransform.getAdaptations().values().iterator();
        while (it.hasNext()) {
            Iterator<ElementCreatorImpl.ElementInfo> it2 = schema.getTransform((ElementKey<?, ?>) null, it.next(), (MetadataContext) null).getElements().values().iterator();
            while (it2.hasNext()) {
                ElementKey<?, ?> elementKey = it2.next().key;
                QName id = elementKey.getId();
                if (!elementNames.contains(id) && !hashSetNewHashSet.contains(id)) {
                    ElementKey elementKey2 = (ElementKey) linkedHashMapNewLinkedHashMap.get(id);
                    ElementKey<?, ?> elementKeyCheckCompatibleElements = elementKey2 != null ? checkCompatibleElements(elementKey2, elementKey) : elementKey;
                    if (elementKeyCheckCompatibleElements == null) {
                        linkedHashMapNewLinkedHashMap.remove(id);
                        hashSetNewHashSet.add(id);
                    } else if (elementKeyCheckCompatibleElements == elementKey) {
                        linkedHashMapNewLinkedHashMap.put(id, elementKey);
                    }
                }
            }
        }
        return ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
    }

    private static Set<QName> getElementNames(ElementTransform elementTransform) {
        HashSet hashSetNewHashSet = Sets.newHashSet();
        Iterator<ElementCreatorImpl.ElementInfo> it = elementTransform.getElements().values().iterator();
        while (it.hasNext()) {
            hashSetNewHashSet.add(it.next().key.getId());
        }
        return hashSetNewHashSet;
    }

    private static boolean checkCompatible(MetadataKey<?> metadataKey, MetadataKey<?> metadataKey2) {
        Class<? extends Object> datatype = metadataKey.getDatatype();
        Class<? extends Object> datatype2 = metadataKey2.getDatatype();
        if (datatype == datatype2) {
            return true;
        }
        logger.warning("Incompatible datatypes.  First(" + metadataKey + "): " + datatype + " but Second(" + metadataKey2 + "): " + datatype2);
        return false;
    }

    private static ElementKey<?, ?> checkCompatibleElements(ElementKey<?, ?> elementKey, ElementKey<?, ?> elementKey2) {
        ElementKey<?, ?> elementKey3;
        boolean z = false;
        boolean z2 = checkCompatible(elementKey, elementKey2);
        Class<?> elementType = elementKey.getElementType();
        Class<? extends E> elementType2 = elementKey2.getElementType();
        if (elementType == elementType2 || elementType.isAssignableFrom(elementType2)) {
            z = z2;
            elementKey3 = elementKey;
        } else if (elementType2.isAssignableFrom(elementType)) {
            z = z2;
            elementKey3 = elementKey2;
        } else {
            logger.warning("Incompatible element types. First(" + elementKey + "): " + elementType + " but Second(" + elementKey2 + "): " + elementType2);
            elementKey3 = elementKey;
        }
        if (z) {
            return elementKey3;
        }
        return null;
    }

    private AdaptationRegistryFactory() {
    }
}
