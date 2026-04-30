package com.google.gdata.model.gd;

import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class FamilyName extends Element {
    public static final ElementKey<String, FamilyName> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, com.google.gdata.data.appsforyourdomain.Name.ATTRIBUTE_FAMILY_NAME), String.class, FamilyName.class);
    public static final AttributeKey<String> YOMI = AttributeKey.of(new QName(null, "yomi"), String.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY).addAttribute(YOMI);
        }
    }

    public FamilyName() {
        super(KEY);
    }

    protected FamilyName(ElementKey<String, ? extends FamilyName> elementKey) {
        super(elementKey);
    }

    protected FamilyName(ElementKey<String, ? extends FamilyName> elementKey, Element element) {
        super(elementKey, element);
    }

    public FamilyName(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public FamilyName lock() {
        return (FamilyName) super.lock();
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public FamilyName setValue(String str) {
        super.setTextValue(str);
        return this;
    }

    public boolean hasValue() {
        return super.hasTextValue();
    }

    public String getYomi() {
        return (String) super.getAttributeValue(YOMI);
    }

    public FamilyName setYomi(String str) {
        super.setAttributeValue(YOMI, str);
        return this;
    }

    public boolean hasYomi() {
        return super.hasAttribute(YOMI);
    }

    @Override // com.google.gdata.model.Element
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        FamilyName familyName = (FamilyName) obj;
        return eq(getValue(), familyName.getValue()) && eq(getYomi(), familyName.getYomi());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getValue() != null) {
            iHashCode = (iHashCode * 37) + getValue().hashCode();
        }
        if (getYomi() != null) {
            return (iHashCode * 37) + getYomi().hashCode();
        }
        return iHashCode;
    }
}
