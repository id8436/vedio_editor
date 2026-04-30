package com.google.gdata.model.atom;

import com.google.gdata.data.IOutOfLineContent;
import com.google.gdata.data.Reference;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.Namespaces;
import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: loaded from: classes.dex */
public class OutOfLineContent extends Content implements IOutOfLineContent, Reference {
    public static final String KIND = "out-of-line";
    public static final ElementKey<String, OutOfLineContent> KEY = ElementKey.of(Content.KEY.getId(), String.class, OutOfLineContent.class);
    public static final AttributeKey<Long> LENGTH = AttributeKey.of(new QName("length"), Long.class);
    public static final AttributeKey<String> ETAG = AttributeKey.of(new QName(Namespaces.gNs, "etag"));

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            Content.registerMetadata(metadataRegistry);
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.replaceAttribute(Content.SRC).setRequired(true);
            elementCreatorBuild.addAttribute(LENGTH).setVisible(false);
            elementCreatorBuild.addAttribute(ETAG);
            metadataRegistry.adapt(Content.KEY, KIND, KEY);
        }
    }

    public OutOfLineContent() {
        super(KEY);
    }

    public OutOfLineContent(Content content) {
        super(KEY, content);
    }

    protected OutOfLineContent(ElementKey<?, ?> elementKey) {
        super(elementKey);
    }

    @Override // com.google.gdata.model.atom.Content, com.google.gdata.data.IContent
    public int getType() {
        return 7;
    }

    public void setMimeType(ContentType contentType) {
        setAttributeValue(TYPE, contentType == null ? null : contentType.getMediaType());
    }

    @Override // com.google.gdata.data.IOutOfLineContent
    @Deprecated
    public String getUri() {
        URI src = getSrc();
        if (src == null) {
            return null;
        }
        return src.toString();
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
        setSrc(uri);
    }

    public void setSrc(URI uri) {
        setAttributeValue(SRC, uri);
    }

    public void setLength(long j) {
        setAttributeValue(LENGTH, j == -1 ? null : Long.valueOf(j));
    }

    @Override // com.google.gdata.data.Reference
    public String getHref() {
        URI uri = (URI) getAttributeValue(SRC);
        if (uri == null) {
            return null;
        }
        return uri.toString();
    }

    @Override // com.google.gdata.data.Reference
    public void setHref(String str) {
        try {
            setAttributeValue(SRC, str == null ? null : new URI(str));
        } catch (URISyntaxException e2) {
            throw new IllegalArgumentException("Not a URI: " + str, e2);
        }
    }

    public long getLength() {
        Long l = (Long) getAttributeValue(LENGTH);
        if (l == null) {
            return -1L;
        }
        return l.longValue();
    }

    @Override // com.google.gdata.data.IOutOfLineContent
    public String getEtag() {
        return (String) getAttributeValue(ETAG);
    }

    public void setEtag(String str) {
        setAttributeValue(ETAG, str);
    }
}
