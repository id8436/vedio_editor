package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class OrgTitle extends Element {
    public static final ElementKey<String, OrgTitle> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "orgTitle"), String.class, OrgTitle.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY).setContentRequired(false);
        }
    }

    public OrgTitle() {
        super(KEY);
    }

    protected OrgTitle(ElementKey<String, ? extends OrgTitle> elementKey) {
        super(elementKey);
    }

    protected OrgTitle(ElementKey<String, ? extends OrgTitle> elementKey, Element element) {
        super(elementKey, element);
    }

    public OrgTitle(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public OrgTitle lock() {
        return (OrgTitle) super.lock();
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public OrgTitle setValue(String str) {
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
        return eq(getValue(), ((OrgTitle) obj).getValue());
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
