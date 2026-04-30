package com.google.api.gbase.client;

import com.google.common.collect.HashMultimap;
import com.google.common.collect.Multimap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleBaseAttribute {
    private Adjustments adjustments;
    private final GoogleBaseAttributeId attributeId;
    private boolean privateAccess;
    private List<GoogleBaseAttribute> subAttributes;
    private Multimap<String, String> subElements;
    private String textValue;
    private List<Thumbnail> thumbnails;

    public GoogleBaseAttribute(String str) {
        this(new GoogleBaseAttributeId(str, null), (String) null);
    }

    public GoogleBaseAttribute(String str, GoogleBaseAttributeType googleBaseAttributeType) {
        this(str, googleBaseAttributeType, (String) null);
    }

    public GoogleBaseAttribute(String str, GoogleBaseAttributeType googleBaseAttributeType, String str2) {
        this(new GoogleBaseAttributeId(str, googleBaseAttributeType), str2);
    }

    public GoogleBaseAttribute(String str, GoogleBaseAttributeType googleBaseAttributeType, boolean z) {
        this(str, googleBaseAttributeType, z, null);
    }

    public GoogleBaseAttribute(String str, GoogleBaseAttributeType googleBaseAttributeType, boolean z, String str2) {
        this(new GoogleBaseAttributeId(str, googleBaseAttributeType), str2);
        setPrivate(z);
    }

    public GoogleBaseAttribute(GoogleBaseAttributeId googleBaseAttributeId, String str) {
        this.attributeId = googleBaseAttributeId;
        this.textValue = str;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        stringBuffer.append(this.attributeId);
        stringBuffer.append(": ");
        if (hasValue()) {
            stringBuffer.append(this.textValue);
        }
        if (hasSubElements()) {
            stringBuffer.append(this.subElements.toString());
        }
        if (hasSubAttributes()) {
            stringBuffer.append(this.subAttributes.toString());
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public String getName() {
        return this.attributeId.getName();
    }

    public GoogleBaseAttributeType getType() {
        return this.attributeId.getType();
    }

    public GoogleBaseAttributeId getAttributeId() {
        return this.attributeId;
    }

    public String getValueAsString() {
        return this.textValue;
    }

    public boolean isPrivate() {
        return this.privateAccess;
    }

    public void setPrivate(boolean z) {
        this.privateAccess = z;
    }

    public void setValue(String str) {
        this.textValue = str;
    }

    public boolean hasValue() {
        return this.textValue != null;
    }

    public boolean hasSubElements() {
        return (this.subElements == null || this.subElements.isEmpty()) ? false : true;
    }

    public void setSubElement(String str, String str2) {
        removeSubElement(str);
        if (this.subElements == null) {
            this.subElements = HashMultimap.create();
        }
        this.subElements.put(str, str2);
    }

    public void appendSubElement(String str, String str2) {
        if (str2 != null) {
            if (this.subElements == null) {
                this.subElements = HashMultimap.create();
            }
            this.subElements.put(str, str2);
        }
    }

    public String getSubElementValue(String str) {
        if (this.subElements != null) {
            Collection<String> collection = this.subElements.get(str);
            if (!collection.isEmpty()) {
                return collection.iterator().next();
            }
        }
        return null;
    }

    public Collection<String> getSubElementValues(String str) {
        return this.subElements == null ? Collections.emptySet() : this.subElements.get(str);
    }

    public boolean hasSubElement(String str) {
        if (this.subElements == null) {
            return false;
        }
        return this.subElements.containsKey(str);
    }

    public void removeSubElement(String str) {
        if (this.subElements != null) {
            this.subElements.removeAll(str);
        }
    }

    public Collection<? extends String> getSubElementNames() {
        return this.subElements == null ? Collections.emptyList() : this.subElements.keySet();
    }

    public boolean hasSubAttributes() {
        return (this.subAttributes == null || this.subAttributes.isEmpty()) ? false : true;
    }

    public List<GoogleBaseAttribute> getSubAttributes() {
        if (this.subAttributes == null) {
            this.subAttributes = new ArrayList();
        }
        return this.subAttributes;
    }

    public void addSubAttribute(GoogleBaseAttribute googleBaseAttribute) {
        getSubAttributes().add(googleBaseAttribute);
    }

    public boolean hasAdjustments() {
        return (this.adjustments == null || this.adjustments.isEmpty()) ? false : true;
    }

    public Adjustments getAdjustments() {
        if (this.adjustments == null) {
            this.adjustments = new Adjustments();
        }
        return this.adjustments;
    }

    public boolean hasThumbnails() {
        return this.thumbnails != null && this.thumbnails.size() > 0;
    }

    public List<Thumbnail> getThumbnails() {
        if (this.thumbnails == null) {
            this.thumbnails = new ArrayList();
        }
        return this.thumbnails;
    }

    public int hashCode() {
        int iHashCode = this.attributeId.hashCode() + 27;
        if (this.textValue != null) {
            iHashCode += this.textValue.hashCode() * 49;
        }
        if (this.subElements != null) {
            return iHashCode + this.subElements.hashCode();
        }
        return iHashCode;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GoogleBaseAttribute)) {
            return false;
        }
        GoogleBaseAttribute googleBaseAttribute = (GoogleBaseAttribute) obj;
        return this.attributeId.equals(googleBaseAttribute.attributeId) && this.privateAccess == googleBaseAttribute.privateAccess && equalsMaybeNull(this.textValue, googleBaseAttribute.textValue) && equalsMaybeNull(this.subElements, googleBaseAttribute.subElements);
    }

    private static boolean equalsMaybeNull(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }
}
