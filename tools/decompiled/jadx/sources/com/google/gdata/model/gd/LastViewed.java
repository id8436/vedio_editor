package com.google.gdata.model.gd;

import com.google.gdata.data.DateTime;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class LastViewed extends Element {
    public static final ElementKey<DateTime, LastViewed> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "lastViewed"), DateTime.class, LastViewed.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY).setContentRequired(false);
        }
    }

    public LastViewed() {
        super(KEY);
    }

    protected LastViewed(ElementKey<DateTime, ? extends LastViewed> elementKey) {
        super(elementKey);
    }

    protected LastViewed(ElementKey<DateTime, ? extends LastViewed> elementKey, Element element) {
        super(elementKey, element);
    }

    public LastViewed(DateTime dateTime) {
        this();
        setValue(dateTime);
    }

    @Override // com.google.gdata.model.Element
    public LastViewed lock() {
        return (LastViewed) super.lock();
    }

    public DateTime getValue() {
        return (DateTime) super.getTextValue(KEY);
    }

    public LastViewed setValue(DateTime dateTime) {
        super.setTextValue(dateTime);
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
        return eq(getValue(), ((LastViewed) obj).getValue());
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
