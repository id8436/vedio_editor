package com.google.gdata.model.atompub;

import com.google.gdata.data.DateTime;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.util.Namespaces;

/* JADX INFO: loaded from: classes3.dex */
public class Edited extends Element {
    public static final ElementKey<DateTime, Edited> KEY = ElementKey.of(new QName(Namespaces.atomPubStandardNs, "edited"), DateTime.class, Edited.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public Edited() {
        super(KEY);
    }

    protected Edited(ElementKey<DateTime, ? extends Edited> elementKey) {
        super(elementKey);
    }

    protected Edited(ElementKey<DateTime, ? extends Edited> elementKey, Element element) {
        super(elementKey, element);
    }

    public Edited(DateTime dateTime) {
        this();
        setValue(dateTime);
    }

    @Override // com.google.gdata.model.Element
    public Edited lock() {
        return (Edited) super.lock();
    }

    public DateTime getValue() {
        return (DateTime) super.getTextValue(KEY);
    }

    public Edited setValue(DateTime dateTime) {
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
        return eq(getValue(), ((Edited) obj).getValue());
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
