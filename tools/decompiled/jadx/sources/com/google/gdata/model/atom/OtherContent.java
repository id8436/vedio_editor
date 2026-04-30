package com.google.gdata.model.atom;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.ElementMetadata;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.ValidationContext;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.XmlBlob;
import com.google.gdata.util.common.util.Base64;
import com.google.gdata.util.common.util.Base64DecoderException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class OtherContent extends Content {
    public static final ElementKey<String, OtherContent> KEY = ElementKey.of(Content.KEY.getId(), String.class, OtherContent.class);
    public static final String KIND = "other";

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            Content.registerMetadata(metadataRegistry);
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addElement(Feed.KEY);
            elementCreatorBuild.addElement(Entry.KEY);
            metadataRegistry.adapt(Content.KEY, "other", KEY);
        }
    }

    public OtherContent() {
        super(KEY);
    }

    public OtherContent(Content content) {
        super(KEY, content);
    }

    protected OtherContent(ElementKey<?, ?> elementKey) {
        super(elementKey);
    }

    @Override // com.google.gdata.model.atom.Content, com.google.gdata.data.IContent
    public int getType() {
        if (getXml() != null || getXmlContent() != null) {
            return 5;
        }
        if (getMimeType().getMediaType().equals("text")) {
            return 4;
        }
        return 6;
    }

    public void setMimeType(ContentType contentType) {
        setAttributeValue(TYPE, contentType.getMediaType());
    }

    public XmlBlob getXml() {
        return null;
    }

    public void setXml(XmlBlob xmlBlob) {
        throw new UnsupportedOperationException("Not supported yet");
    }

    public Element getXmlContent() {
        Iterator<Element> elementIterator = getElementIterator();
        if (elementIterator.hasNext()) {
            return elementIterator.next();
        }
        return null;
    }

    public void setXmlContent(Element element) {
        addElement(element);
    }

    public String getText() {
        return (String) getTextValue(KEY);
    }

    public void setText(String str) {
        setTextValue(str);
    }

    public byte[] getBytes() {
        String text = getText();
        if (text == null) {
            return null;
        }
        try {
            return Base64.decode(text);
        } catch (Base64DecoderException e2) {
            throw new IllegalStateException("Value was not base64 encoded: " + text);
        }
    }

    public void setBytes(byte[] bArr) {
        setText(Base64.encode(bArr));
    }

    @Override // com.google.gdata.model.Element
    protected void validate(ElementMetadata<?, ?> elementMetadata, ValidationContext validationContext) {
        super.validate(elementMetadata, validationContext);
        int i = hasTextValue() ? 0 : 1;
        if (getElementCount() > i) {
            validationContext.addError(this, "Content cannot contain more than " + i + " child elements, but contains " + getElementCount());
        }
    }
}
