package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class PostCode extends Element {
    public static final ElementKey<String, PostCode> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "postcode"), String.class, PostCode.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public PostCode() {
        super(KEY);
    }

    protected PostCode(ElementKey<String, ? extends PostCode> elementKey) {
        super(elementKey);
    }

    protected PostCode(ElementKey<String, ? extends PostCode> elementKey, Element element) {
        super(elementKey, element);
    }

    public PostCode(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public PostCode lock() {
        return (PostCode) super.lock();
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public PostCode setValue(String str) {
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
        return eq(getValue(), ((PostCode) obj).getValue());
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
