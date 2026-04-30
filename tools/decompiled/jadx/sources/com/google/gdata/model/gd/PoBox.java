package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class PoBox extends Element {
    public static final ElementKey<String, PoBox> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "pobox"), String.class, PoBox.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public PoBox() {
        super(KEY);
    }

    protected PoBox(ElementKey<String, ? extends PoBox> elementKey) {
        super(elementKey);
    }

    protected PoBox(ElementKey<String, ? extends PoBox> elementKey, Element element) {
        super(elementKey, element);
    }

    public PoBox(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public PoBox lock() {
        return (PoBox) super.lock();
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public PoBox setValue(String str) {
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
        return eq(getValue(), ((PoBox) obj).getValue());
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
