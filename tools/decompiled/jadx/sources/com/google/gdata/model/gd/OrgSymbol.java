package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class OrgSymbol extends Element {
    public static final ElementKey<String, OrgSymbol> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "orgSymbol"), String.class, OrgSymbol.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public OrgSymbol() {
        super(KEY);
    }

    protected OrgSymbol(ElementKey<String, ? extends OrgSymbol> elementKey) {
        super(elementKey);
    }

    protected OrgSymbol(ElementKey<String, ? extends OrgSymbol> elementKey, Element element) {
        super(elementKey, element);
    }

    public OrgSymbol(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public OrgSymbol lock() {
        return (OrgSymbol) super.lock();
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public OrgSymbol setValue(String str) {
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
        return eq(getValue(), ((OrgSymbol) obj).getValue());
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
