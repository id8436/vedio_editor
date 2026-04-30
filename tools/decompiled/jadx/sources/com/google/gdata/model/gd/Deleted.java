package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Deleted extends Element {
    public static final ElementKey<Void, Deleted> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "deleted"), Void.class, Deleted.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(KEY);
        }
    }

    public Deleted() {
        super(KEY);
    }

    protected Deleted(ElementKey<?, ? extends Deleted> elementKey) {
        super(elementKey);
    }

    protected Deleted(ElementKey<?, ? extends Deleted> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Deleted lock() {
        return (Deleted) super.lock();
    }
}
