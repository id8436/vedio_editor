package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class QuotaBytesUsed extends Element {
    public static final ElementKey<Long, QuotaBytesUsed> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "quotaBytesUsed"), Long.class, QuotaBytesUsed.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY).setContentRequired(false);
        }
    }

    public QuotaBytesUsed() {
        super(KEY);
    }

    protected QuotaBytesUsed(ElementKey<Long, ? extends QuotaBytesUsed> elementKey) {
        super(elementKey);
    }

    protected QuotaBytesUsed(ElementKey<Long, ? extends QuotaBytesUsed> elementKey, Element element) {
        super(elementKey, element);
    }

    public QuotaBytesUsed(Long l) {
        this();
        setValue(l);
    }

    @Override // com.google.gdata.model.Element
    public QuotaBytesUsed lock() {
        return (QuotaBytesUsed) super.lock();
    }

    public Long getValue() {
        return (Long) super.getTextValue(KEY);
    }

    public QuotaBytesUsed setValue(Long l) {
        super.setTextValue(l);
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
        return eq(getValue(), ((QuotaBytesUsed) obj).getValue());
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
