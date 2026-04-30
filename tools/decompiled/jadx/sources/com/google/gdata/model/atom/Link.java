package com.google.gdata.model.atom;

import com.google.gdata.data.ILink;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.ValidationContext;
import com.google.gdata.util.Namespaces;
import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: loaded from: classes.dex */
public class Link extends Element implements ILink {
    protected long length;
    public static final ElementKey<Void, Link> KEY = ElementKey.of(new QName(Namespaces.atomNs, "link"), Link.class);
    public static final AttributeKey<String> HREF = AttributeKey.of(new QName("href"));
    public static final AttributeKey<String> REL = AttributeKey.of(new QName("rel"));
    public static final AttributeKey<String> TYPE = AttributeKey.of(new QName("type"));
    public static final AttributeKey<String> HREFLANG = AttributeKey.of(new QName("hreflang"));
    public static final AttributeKey<String> TITLE = AttributeKey.of(new QName("title"));
    public static final AttributeKey<String> XML_LANG = AttributeKey.of(new QName(Namespaces.xmlNs, "lang"));
    public static final AttributeKey<Long> LENGTH = AttributeKey.of(new QName("length"), Long.class);
    public static final AttributeKey<String> ETAG = AttributeKey.of(new QName(Namespaces.gNs, "etag"));

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator cardinality = metadataRegistry.build(KEY).setCardinality(ElementMetadata.Cardinality.MULTIPLE);
            cardinality.addAttribute(REL);
            cardinality.addAttribute(TYPE);
            cardinality.addAttribute(HREF).setRequired(true);
            cardinality.addAttribute(HREFLANG);
            cardinality.addAttribute(TITLE);
            cardinality.addAttribute(XML_LANG);
            cardinality.addAttribute(LENGTH);
            cardinality.addAttribute(ETAG);
            cardinality.addElement(Content.KEY);
        }
    }

    public Link() {
        super(KEY);
        this.length = -1L;
    }

    protected Link(ElementKey<?, ? extends Link> elementKey) {
        super(elementKey);
        this.length = -1L;
    }

    protected Link(ElementKey<?, ? extends Link> elementKey, Element element) {
        super(elementKey, element);
        this.length = -1L;
    }

    @Deprecated
    public Link(String str, String str2, String str3) {
        this();
        setRel(str);
        setType(str2);
        setHref(str3);
    }

    public Link(String str, String str2, URI uri) {
        this();
        setRel(str);
        setType(str2);
        setHref(uri);
    }

    @Override // com.google.gdata.data.ILink
    public String getRel() {
        String str = (String) getAttributeValue(REL);
        return str != null ? str : "alternate";
    }

    @Override // com.google.gdata.data.ILink
    public void setRel(String str) {
        setAttributeValue(REL, str);
    }

    @Override // com.google.gdata.data.ILink
    public String getType() {
        return (String) getAttributeValue(TYPE);
    }

    @Override // com.google.gdata.data.ILink
    public void setType(String str) {
        setAttributeValue(TYPE, str);
    }

    @Override // com.google.gdata.data.Reference
    public String getHref() {
        return (String) getAttributeValue(HREF);
    }

    public URI getHrefUri() {
        String href = getHref();
        if (href == null) {
            return null;
        }
        try {
            return new URI(href);
        } catch (URISyntaxException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    @Override // com.google.gdata.data.Reference
    public void setHref(String str) {
        setAttributeValue(HREF, str);
    }

    public void setHref(URI uri) {
        setHref(uri == null ? null : uri.toString());
    }

    public String getHrefLang() {
        return (String) getAttributeValue(HREFLANG);
    }

    public void setHrefLang(String str) {
        setAttributeValue(HREFLANG, str);
    }

    public String getTitle() {
        return (String) getAttributeValue(TITLE);
    }

    public void setTitle(String str) {
        setAttributeValue(TITLE, str);
    }

    public String getTitleLang() {
        return (String) getAttributeValue(XML_LANG);
    }

    public void setTitleLang(String str) {
        setAttributeValue(XML_LANG, str);
    }

    public long getLength() {
        Long l = (Long) getAttributeValue(LENGTH);
        if (l == null) {
            return -1L;
        }
        return l.longValue();
    }

    public void setLength(long j) {
        setAttributeValue(LENGTH, Long.valueOf(j));
    }

    public String getEtag() {
        return (String) getAttributeValue(ETAG);
    }

    public void setEtag(String str) {
        setAttributeValue(ETAG, str);
    }

    public Content getContent() {
        return (Content) getElement(Content.KEY);
    }

    public void setContent(Content content) {
        setElement(Content.KEY, content);
    }

    public boolean matches(String str, String str2) {
        return (str == null || str.equals(getRel())) && (str2 == null || str2.equals(getType()));
    }

    @Override // com.google.gdata.model.Element
    protected Element narrow(ElementMetadata<?, ?> elementMetadata, ValidationContext validationContext) {
        return adapt(this, elementMetadata, getRel());
    }
}
