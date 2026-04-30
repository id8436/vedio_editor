package com.google.gdata.model.gd;

import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class CustomProperty extends Element {
    public static final ElementKey<String, CustomProperty> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "customProperty"), String.class, CustomProperty.class);
    public static final AttributeKey<String> NAME = AttributeKey.of(new QName(null, "name"), String.class);
    public static final AttributeKey<String> TYPE = AttributeKey.of(new QName(null, "type"), String.class);
    public static final AttributeKey<String> UNIT = AttributeKey.of(new QName(null, "unit"), String.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(NAME).setRequired(true);
            elementCreatorBuild.addAttribute(TYPE);
            elementCreatorBuild.addAttribute(UNIT);
        }
    }

    public CustomProperty() {
        super(KEY);
    }

    protected CustomProperty(ElementKey<String, ? extends CustomProperty> elementKey) {
        super(elementKey);
    }

    protected CustomProperty(ElementKey<String, ? extends CustomProperty> elementKey, Element element) {
        super(elementKey, element);
    }

    public CustomProperty(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public CustomProperty lock() {
        return (CustomProperty) super.lock();
    }

    public String getName() {
        return (String) super.getAttributeValue(NAME);
    }

    public CustomProperty setName(String str) {
        super.setAttributeValue(NAME, str);
        return this;
    }

    public boolean hasName() {
        return super.hasAttribute(NAME);
    }

    public String getType() {
        return (String) super.getAttributeValue(TYPE);
    }

    public CustomProperty setType(String str) {
        super.setAttributeValue(TYPE, str);
        return this;
    }

    public boolean hasType() {
        return super.hasAttribute(TYPE);
    }

    public String getUnit() {
        return (String) super.getAttributeValue(UNIT);
    }

    public CustomProperty setUnit(String str) {
        super.setAttributeValue(UNIT, str);
        return this;
    }

    public boolean hasUnit() {
        return super.hasAttribute(UNIT);
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public CustomProperty setValue(String str) {
        super.setTextValue(str);
        return this;
    }

    public boolean hasValue() {
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
        CustomProperty customProperty = (CustomProperty) obj;
        return eq(getName(), customProperty.getName()) && eq(getType(), customProperty.getType()) && eq(getUnit(), customProperty.getUnit()) && eq(getValue(), customProperty.getValue());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getName() != null) {
            iHashCode = (iHashCode * 37) + getName().hashCode();
        }
        if (getType() != null) {
            iHashCode = (iHashCode * 37) + getType().hashCode();
        }
        if (getUnit() != null) {
            iHashCode = (iHashCode * 37) + getUnit().hashCode();
        }
        if (getValue() != null) {
            return (iHashCode * 37) + getValue().hashCode();
        }
        return iHashCode;
    }
}
