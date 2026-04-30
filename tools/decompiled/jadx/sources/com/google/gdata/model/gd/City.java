package com.google.gdata.model.gd;

import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class City extends Element {
    public static final ElementKey<String, City> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, BehanceSDKUrlUtil.PARAM_KEY_CITY), String.class, City.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public City() {
        super(KEY);
    }

    protected City(ElementKey<String, ? extends City> elementKey) {
        super(elementKey);
    }

    protected City(ElementKey<String, ? extends City> elementKey, Element element) {
        super(elementKey, element);
    }

    public City(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public City lock() {
        return (City) super.lock();
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public City setValue(String str) {
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
        return eq(getValue(), ((City) obj).getValue());
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
