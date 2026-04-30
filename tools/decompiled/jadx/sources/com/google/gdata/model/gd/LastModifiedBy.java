package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.atom.Person;

/* JADX INFO: loaded from: classes3.dex */
public class LastModifiedBy extends Person {
    public static final ElementKey<Void, LastModifiedBy> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "lastModifiedBy"), Void.class, LastModifiedBy.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            Person.registerMetadata(metadataRegistry);
            metadataRegistry.build(KEY);
        }
    }

    public LastModifiedBy() {
        super(KEY);
    }

    protected LastModifiedBy(ElementKey<?, ? extends LastModifiedBy> elementKey) {
        super(elementKey);
    }

    protected LastModifiedBy(ElementKey<?, ? extends LastModifiedBy> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public LastModifiedBy lock() {
        return (LastModifiedBy) super.lock();
    }
}
