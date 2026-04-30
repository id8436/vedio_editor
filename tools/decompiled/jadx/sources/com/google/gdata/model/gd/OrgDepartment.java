package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class OrgDepartment extends Element {
    public static final ElementKey<String, OrgDepartment> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "orgDepartment"), String.class, OrgDepartment.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public OrgDepartment() {
        super(KEY);
    }

    protected OrgDepartment(ElementKey<String, ? extends OrgDepartment> elementKey) {
        super(elementKey);
    }

    protected OrgDepartment(ElementKey<String, ? extends OrgDepartment> elementKey, Element element) {
        super(elementKey, element);
    }

    public OrgDepartment(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public OrgDepartment lock() {
        return (OrgDepartment) super.lock();
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public OrgDepartment setValue(String str) {
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
        return eq(getValue(), ((OrgDepartment) obj).getValue());
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
