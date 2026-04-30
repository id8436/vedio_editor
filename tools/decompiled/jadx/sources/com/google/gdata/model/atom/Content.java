package com.google.gdata.model.atom;

import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.data.IContent;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.model.ValidationContext;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.Namespaces;
import java.net.URI;

/* JADX INFO: loaded from: classes3.dex */
public class Content extends Element implements IContent {
    public static final ElementKey<String, Content> CONSTRUCT = ElementKey.of(null, String.class, Content.class);
    public static final ElementKey<String, Content> KEY = ElementKey.of(new QName(Namespaces.atomNs, "content"), String.class, Content.class);
    public static final AttributeKey<String> XML_LANG = AttributeKey.of(new QName(Namespaces.xmlNs, "lang"));
    public static final AttributeKey<String> TYPE = AttributeKey.of(new QName("type"));
    public static final AttributeKey<URI> SRC = AttributeKey.of(new QName("src"), URI.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(CONSTRUCT)) {
            ElementCreator contentRequired = metadataRegistry.build(CONSTRUCT).setContentRequired(false);
            contentRequired.addAttribute(TYPE);
            contentRequired.addAttribute(SRC);
            contentRequired.addAttribute(XML_LANG);
            metadataRegistry.build(KEY);
        }
    }

    public Content(ElementKey<?, ?> elementKey) {
        super(elementKey);
    }

    protected Content(ElementKey<?, ?> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.data.IContent
    public int getType() {
        return 1;
    }

    @Override // com.google.gdata.data.IContent
    public String getLang() {
        return (String) getAttributeValue(XML_LANG);
    }

    public void setLang(String str) {
        setAttributeValue(XML_LANG, str);
    }

    public ContentType getMimeType() {
        String str = (String) getAttributeValue(TYPE);
        if (str == null) {
            return null;
        }
        return new ContentType(str);
    }

    public URI getSrc() {
        return (URI) getAttributeValue(SRC);
    }

    @Override // com.google.gdata.model.Element
    protected Element narrow(ElementMetadata<?, ?> elementMetadata, ValidationContext validationContext) {
        if (Content.class.equals(getClass())) {
            if (getSrc() == null) {
                String str = (String) getAttributeValue(TYPE);
                if (str == null || str.equals("text") || str.equals(BehanceSDKPublishConstants.KEY_HTML) || str.equals("xhtml")) {
                    return adapt(this, elementMetadata, "text");
                }
                return adapt(this, elementMetadata, "other");
            }
            return adapt(this, elementMetadata, OutOfLineContent.KIND);
        }
        return this;
    }
}
