package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class CreateId extends Element {
    public static final ElementKey<String, CreateId> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "createId"), String.class, CreateId.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public CreateId() {
        super(KEY);
    }

    protected CreateId(ElementKey<String, ? extends CreateId> elementKey) {
        super(elementKey);
    }

    protected CreateId(ElementKey<String, ? extends CreateId> elementKey, Element element) {
        super(elementKey, element);
    }

    public CreateId(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public CreateId lock() {
        return (CreateId) super.lock();
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public CreateId setValue(String str) {
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
        return eq(getValue(), ((CreateId) obj).getValue());
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
