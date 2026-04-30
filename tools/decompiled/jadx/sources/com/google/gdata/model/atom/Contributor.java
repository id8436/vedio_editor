package com.google.gdata.model.atom;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.util.Namespaces;
import java.net.URI;

/* JADX INFO: loaded from: classes3.dex */
public class Contributor extends Person {
    public static final ElementKey<Void, Contributor> KEY = ElementKey.of(new QName(Namespaces.atomNs, "contributor"), Contributor.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            Person.registerMetadata(metadataRegistry);
            metadataRegistry.build(KEY);
        }
    }

    public Contributor() {
        super(KEY);
    }

    protected Contributor(ElementKey<?, ?> elementKey) {
        super(elementKey);
    }

    protected Contributor(ElementKey<?, ? extends Contributor> elementKey, Element element) {
        super(elementKey, element);
    }

    public Contributor(String str) {
        super(KEY, str);
    }

    public Contributor(String str, URI uri, String str2) {
        super(KEY, str, uri, str2);
    }
}
