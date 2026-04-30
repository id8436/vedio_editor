package com.google.gdata.model;

import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
class AdaptationRegistry {
    private final Map<String, ElementKey<?, ?>> adaptations;
    private final Map<QName, AttributeKey<?>> attributes;
    private final Map<QName, ElementKey<?, ?>> elements;

    AdaptationRegistry(Map<String, ElementKey<?, ?>> map, Map<QName, AttributeKey<?>> map2, Map<QName, ElementKey<?, ?>> map3) {
        this.adaptations = map;
        this.attributes = map2;
        this.elements = map3;
    }

    ElementKey<?, ?> getAdaptation(String str) {
        return this.adaptations.get(str);
    }

    AttributeKey<?> findAttribute(QName qName) {
        return this.attributes.get(qName);
    }

    ElementKey<?, ?> findElement(QName qName) {
        return this.elements.get(qName);
    }
}
