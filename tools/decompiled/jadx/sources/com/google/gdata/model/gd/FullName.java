package com.google.gdata.model.gd;

import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class FullName extends Element {
    public static final ElementKey<String, FullName> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "fullName"), String.class, FullName.class);
    public static final AttributeKey<String> YOMI = AttributeKey.of(new QName(null, "yomi"), String.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY).addAttribute(YOMI);
        }
    }

    public FullName() {
        super(KEY);
    }

    protected FullName(ElementKey<String, ? extends FullName> elementKey) {
        super(elementKey);
    }

    protected FullName(ElementKey<String, ? extends FullName> elementKey, Element element) {
        super(elementKey, element);
    }

    public FullName(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public FullName lock() {
        return (FullName) super.lock();
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public FullName setValue(String str) {
        super.setTextValue(str);
        return this;
    }

    public boolean hasValue() {
        return super.hasTextValue();
    }

    public String getYomi() {
        return (String) super.getAttributeValue(YOMI);
    }

    public FullName setYomi(String str) {
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
        FullName fullName = (FullName) obj;
        return eq(getValue(), fullName.getValue()) && eq(getYomi(), fullName.getYomi());
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
