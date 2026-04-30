package com.google.gdata.model.atompub;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.util.Namespaces;

/* JADX INFO: loaded from: classes3.dex */
public class Accept extends Element {
    public static final ElementKey<String, Accept> KEY = ElementKey.of(new QName(Namespaces.atomPubStandardNs, "accept"), String.class, Accept.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY).setContentRequired(false);
        }
    }

    public Accept() {
        super(KEY);
    }

    protected Accept(ElementKey<String, ? extends Accept> elementKey) {
        super(elementKey);
    }

    protected Accept(ElementKey<String, ? extends Accept> elementKey, Element element) {
        super(elementKey, element);
    }

    public Accept(String str) {
        this();
        setValue(str);
    }

    @Override // com.google.gdata.model.Element
    public Accept lock() {
        return (Accept) super.lock();
    }

    public String getValue() {
        return (String) super.getTextValue(KEY);
    }

    public Accept setValue(String str) {
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
        return eq(getValue(), ((Accept) obj).getValue());
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
