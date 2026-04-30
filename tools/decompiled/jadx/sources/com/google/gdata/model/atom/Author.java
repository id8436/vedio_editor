package com.google.gdata.model.atom;

import com.google.gdata.client.GDataProtocol;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.util.Namespaces;
import java.net.URI;

/* JADX INFO: loaded from: classes3.dex */
public class Author extends Person {
    public static final ElementKey<Void, Author> KEY = ElementKey.of(new QName(Namespaces.atomNs, GDataProtocol.Query.AUTHOR), Author.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            Person.registerMetadata(metadataRegistry);
            metadataRegistry.build(KEY);
        }
    }

    public Author() {
        super(KEY);
    }

    protected Author(ElementKey<?, ?> elementKey) {
        super(elementKey);
    }

    protected Author(ElementKey<?, ? extends Author> elementKey, Element element) {
        super(elementKey, element);
    }

    public Author(String str) {
        super(KEY, str);
    }

    public Author(String str, URI uri, String str2) {
        super(KEY, str, uri, str2);
    }
}
