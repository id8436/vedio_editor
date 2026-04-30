package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class NameSuffix extends Element {
    public static final ElementKey<String, NameSuffix> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "nameSuffix"), String.class, NameSuffix.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public NameSuffix() {
        super(KEY);
    }

    protected NameSuffix(ElementKey<String, ? extends NameSuffix> elementKey) {
        super(elementKey);
    }

    protected NameSuffix(ElementKey<String, ? extends NameSuffix> elementKey, Element element) {
        super(elementKey, element);
    }

    public NameSuffix(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public NameSuffix lock() {
        return (NameSuffix) super.lock();
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public NameSuffix setValue(String str) {
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
        return eq(getValue(), ((NameSuffix) obj).getValue());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getValue() != null) {
            return (iHashCode * 37) + getValue().hashCode();
        }
        return iHashCode;
    }
}
