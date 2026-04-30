package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Neighborhood extends Element {
    public static final ElementKey<String, Neighborhood> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "neighborhood"), String.class, Neighborhood.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public Neighborhood() {
        super(KEY);
    }

    protected Neighborhood(ElementKey<String, ? extends Neighborhood> elementKey) {
        super(elementKey);
    }

    protected Neighborhood(ElementKey<String, ? extends Neighborhood> elementKey, Element element) {
        super(elementKey, element);
    }

    public Neighborhood(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public Neighborhood lock() {
        return (Neighborhood) super.lock();
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public Neighborhood setValue(String str) {
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
        return eq(getValue(), ((Neighborhood) obj).getValue());
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
