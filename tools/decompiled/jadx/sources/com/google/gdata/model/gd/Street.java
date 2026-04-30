package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Street extends Element {
    public static final ElementKey<String, Street> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "street"), String.class, Street.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public Street() {
        super(KEY);
    }

    protected Street(ElementKey<String, ? extends Street> elementKey) {
        super(elementKey);
    }

    protected Street(ElementKey<String, ? extends Street> elementKey, Element element) {
        super(elementKey, element);
    }

    public Street(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public Street lock() {
        return (Street) super.lock();
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public Street setValue(String str) {
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
        return eq(getValue(), ((Street) obj).getValue());
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
