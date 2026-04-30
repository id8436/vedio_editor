package com.google.gdata.wireformats;

import com.google.common.collect.Maps;
import com.google.gdata.model.Attribute;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.Metadata;
import com.google.gdata.model.QName;
import com.google.gdata.util.common.xml.XmlNamespace;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class GeneratorUtils {
    public static Map<String, XmlNamespace> calculateNamespaces(Element element, ElementMetadata<?, ?> elementMetadata) {
        HashMap mapNewHashMap = Maps.newHashMap();
        calculateNamespaces(mapNewHashMap, element, elementMetadata);
        return mapNewHashMap;
    }

    private static void calculateNamespaces(Map<String, XmlNamespace> map, Element element, ElementMetadata<?, ?> elementMetadata) {
        addNamespace(map, elementMetadata == null ? element.getElementId() : elementMetadata.getName());
        Iterator<Attribute> attributeIterator = element.getAttributeIterator(elementMetadata);
        while (attributeIterator.hasNext()) {
            AttributeKey attributeKey = attributeIterator.next().getAttributeKey();
            Metadata metadataBindAttribute = elementMetadata == null ? null : elementMetadata.bindAttribute(attributeKey);
            addNamespace(map, metadataBindAttribute == null ? attributeKey.getId() : metadataBindAttribute.getName());
        }
        Iterator<Element> elementIterator = element.getElementIterator(elementMetadata);
        while (elementIterator.hasNext()) {
            Element next = elementIterator.next();
            calculateNamespaces(map, next, elementMetadata == null ? null : elementMetadata.bindElement(next.getElementKey()));
        }
    }

    private static void addNamespace(Map<String, XmlNamespace> map, QName qName) {
        XmlNamespace ns;
        if (qName != null && (ns = qName.getNs()) != null && ns.getAlias() != null) {
            String uri = ns.getUri();
            if (!map.containsKey(uri)) {
                map.put(uri, ns);
            }
        }
    }
}
