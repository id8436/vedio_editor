package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Subregion extends Element {
    public static final ElementKey<String, Subregion> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "subregion"), String.class, Subregion.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public Subregion() {
        super(KEY);
    }

    protected Subregion(ElementKey<String, ? extends Subregion> elementKey) {
        super(elementKey);
    }

    protected Subregion(ElementKey<String, ? extends Subregion> elementKey, Element element) {
        super(elementKey, element);
    }

    public Subregion(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public Subregion lock() {
        return (Subregion) super.lock();
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public Subregion setValue(String str) {
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
        return eq(getValue(), ((Subregion) obj).getValue());
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
