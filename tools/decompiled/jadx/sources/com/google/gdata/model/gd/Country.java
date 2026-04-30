package com.google.gdata.model.gd;

import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.google.gdata.client.projecthosting.ProjectHostingService;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Country extends Element {
    public static final ElementKey<String, Country> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, BehanceSDKUrlUtil.PARAM_KEY_COUNTRY), String.class, Country.class);
    public static final AttributeKey<String> CODE = AttributeKey.of(new QName(null, ProjectHostingService.PROJECTHOSTING_SERVICE), String.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY).setContentRequired(false).addAttribute(CODE);
        }
    }

    public Country() {
        super(KEY);
    }

    protected Country(ElementKey<String, ? extends Country> elementKey) {
        super(elementKey);
    }

    protected Country(ElementKey<String, ? extends Country> elementKey, Element element) {
        super(elementKey, element);
    }

    public Country(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public Country lock() {
        return (Country) super.lock();
    }

    public String getCode() {
        return (String) super.getAttributeValue(CODE);
    }

    public Country setCode(String str) {
        super.setAttributeValue(CODE, str);
        return this;
    }

    public boolean hasCode() {
        return super.hasAttribute(CODE);
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public Country setValue(String str) {
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
        Country country = (Country) obj;
        return eq(getCode(), country.getCode()) && eq(getValue(), country.getValue());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getCode() != null) {
            iHashCode = (iHashCode * 37) + getCode().hashCode();
        }
        if (getValue() != null) {
            return (iHashCode * 37) + getValue().hashCode();
        }
        return iHashCode;
    }
}
