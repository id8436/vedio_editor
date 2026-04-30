package com.google.gdata.model.atom;

import com.google.gdata.data.IPerson;
import com.google.gdata.data.codesearch.Package;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.util.Namespaces;
import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: loaded from: classes.dex */
public class Person extends Element implements IPerson {
    public static final ElementKey<Void, Person> KEY = ElementKey.of(null, Person.class);
    public static final ElementKey<String, Element> EMAIL = ElementKey.of(new QName(Namespaces.atomNs, "email"));
    public static final ElementKey<String, Element> NAME = ElementKey.of(new QName(Namespaces.atomNs, "name"));
    public static final ElementKey<URI, Element> URI = ElementKey.of(new QName(Namespaces.atomNs, Package.ATTRIBUTE_URI), URI.class, Element.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            metadataRegistry.build(NAME);
            metadataRegistry.build(URI);
            metadataRegistry.build(EMAIL);
            ElementCreator cardinality = metadataRegistry.build(KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
            cardinality.addElement(NAME).setRequired(true);
            cardinality.addElement(URI);
            cardinality.addElement(EMAIL);
        }
    }

    public Person() {
        super(KEY);
    }

    protected Person(ElementKey<?, ?> elementKey) {
        super(elementKey);
    }

    protected Person(ElementKey<?, ? extends Person> elementKey, Element element) {
        super(elementKey, element);
    }

    public Person(ElementKey<?, ?> elementKey, String str) {
        super(elementKey);
        if (str == null) {
            throw new NullPointerException("Name must have a value");
        }
        setName(str);
    }

    public Person(ElementKey<?, ?> elementKey, String str, URI uri, String str2) {
        super(elementKey);
        setName(str);
        setUri(uri);
        setEmail(str2);
    }

    @Override // com.google.gdata.data.IPerson
    public String getName() {
        if (hasElement(NAME)) {
            return (String) getElementValue(NAME);
        }
        return null;
    }

    public void setName(String str) {
        setElement(NAME, str == null ? null : new Element(NAME).setTextValue(str));
    }

    @Override // com.google.gdata.data.IPerson
    public String getNameLang() {
        throw new UnsupportedOperationException("Not supported yet");
    }

    public void setNameLang(String str) {
        throw new UnsupportedOperationException("Not supported yet");
    }

    @Override // com.google.gdata.data.IPerson
    @Deprecated
    public String getUri() {
        URI uriUri = getUriUri();
        if (uriUri == null) {
            return null;
        }
        return uriUri.toString();
    }

    public URI getUriUri() {
        return (URI) getElementValue(URI);
    }

    @Deprecated
    public void setUri(String str) {
        URI uri;
        if (str == null) {
            uri = null;
        } else {
            try {
                uri = new URI(str);
            } catch (URISyntaxException e2) {
                throw new RuntimeException(e2);
            }
        }
        setUri(uri);
    }

    public void setUri(URI uri) {
        setElement(URI, uri == null ? null : new Element(URI).setTextValue(uri));
    }

    @Override // com.google.gdata.data.IPerson
    public String getEmail() {
        return (String) getElementValue(EMAIL);
    }

    public void setEmail(String str) {
        setElement(EMAIL, str == null ? null : new Element(EMAIL).setTextValue(str));
    }
}
