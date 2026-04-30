package com.google.gdata.data;

import com.adobe.xmp.XMPConst;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.Content;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ILink;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Link extends ExtensionPoint implements ILink {
    protected String href;
    protected String hrefLang;
    protected String rel;
    protected String title;
    protected String titleLang;
    protected String type;
    protected long length = -1;
    protected Content content = null;
    protected String etag = null;

    public Link() {
    }

    public Link(String str, String str2, String str3) {
        this.rel = str;
        this.type = str2;
        setHref(str3);
    }

    @Override // com.google.gdata.data.ILink
    public String getRel() {
        return this.rel != null ? this.rel : "alternate";
    }

    @Override // com.google.gdata.data.ILink
    public void setRel(String str) {
        this.rel = str;
    }

    @Override // com.google.gdata.data.ILink
    public String getType() {
        return this.type;
    }

    @Override // com.google.gdata.data.ILink
    public void setType(String str) {
        this.type = str;
    }

    @Override // com.google.gdata.data.Reference
    public String getHref() {
        return this.href;
    }

    @Override // com.google.gdata.data.Reference
    public void setHref(String str) {
        this.href = str;
    }

    public String getHrefLang() {
        return this.hrefLang;
    }

    public void setHrefLang(String str) {
        this.hrefLang = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getTitleLang() {
        return this.titleLang;
    }

    public void setTitleLang(String str) {
        this.titleLang = str;
    }

    public long getLength() {
        return this.length;
    }

    public void setLength(long j) {
        this.length = j;
    }

    public Content getContent() {
        return this.content;
    }

    public void setContent(Content content) {
        this.content = content;
    }

    public String getEtag() {
        return this.etag;
    }

    public void setEtag(String str) {
        this.etag = str;
    }

    public boolean matches(String str, String str2) {
        return (str == null || str.equals(getRel())) && (str2 == null || str2.equals(this.type));
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new AtomHandler(extensionProfile);
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        generateAtom(xmlWriter, extensionProfile);
    }

    public void generateAtom(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList(3);
        ArrayList arrayList2 = new ArrayList();
        if (this.rel != null) {
            arrayList.add(new XmlWriter.Attribute("rel", this.rel));
        }
        if (this.type != null) {
            arrayList.add(new XmlWriter.Attribute("type", this.type));
        }
        if (this.href != null) {
            arrayList.add(new XmlWriter.Attribute("href", this.href));
        }
        if (this.hrefLang != null) {
            arrayList.add(new XmlWriter.Attribute("hreflang", this.hrefLang));
        }
        if (this.title != null) {
            arrayList.add(new XmlWriter.Attribute("title", this.title));
        }
        if (this.titleLang != null) {
            arrayList.add(new XmlWriter.Attribute(XMPConst.XML_LANG, this.titleLang));
        }
        if (this.length != -1) {
            arrayList.add(new XmlWriter.Attribute("length", String.valueOf(this.length)));
        }
        if (this.etag != null) {
            arrayList2.add(Namespaces.gNs);
            arrayList.add(new XmlWriter.Attribute("gd", "etag", this.etag));
        }
        generateStartElement(xmlWriter, Namespaces.atomNs, "link", arrayList, arrayList2);
        if (this.content != null) {
            this.content.generateAtom(xmlWriter, extensionProfile);
        }
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.atomNs, "link");
    }

    public void generateRss(XmlWriter xmlWriter) throws IOException {
        ArrayList arrayList = new ArrayList(3);
        if (this.rel != null && this.rel.equals(ILink.Rel.ENCLOSURE)) {
            if (this.type != null) {
                arrayList.add(new XmlWriter.Attribute("type", this.type));
            }
            if (this.href != null) {
                arrayList.add(new XmlWriter.Attribute("url", this.href));
            }
            if (this.length != -1) {
                arrayList.add(new XmlWriter.Attribute("length", String.valueOf(this.length)));
            }
            xmlWriter.simpleElement(Namespaces.rssNs, ILink.Rel.ENCLOSURE, arrayList, null);
            return;
        }
        if ("comments".equals(this.rel)) {
            xmlWriter.simpleElement(Namespaces.rssNs, "comments", null, this.href);
            return;
        }
        if ("alternate".equals(this.rel)) {
            xmlWriter.simpleElement(Namespaces.rssNs, "link", null, this.href);
        } else if (ILink.Rel.VIA.equals(this.rel) && this.href != null) {
            arrayList.add(new XmlWriter.Attribute("url", this.href));
            xmlWriter.simpleElement(Namespaces.rssNs, "source", arrayList, null);
        }
    }

    public class AtomHandler extends ExtensionPoint.ExtensionHandler {
        private final boolean linkRequired;

        public AtomHandler(ExtensionProfile extensionProfile) {
            super(Link.this, extensionProfile, Link.class);
            this.linkRequired = true;
        }

        protected AtomHandler(ExtensionProfile extensionProfile, Class<? extends Link> cls) {
            super(Link.this, extensionProfile, cls);
            this.linkRequired = false;
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (str.equals("")) {
                if (str2.equals("rel")) {
                    Link.this.rel = str3;
                    return;
                }
                if (str2.equals("type")) {
                    Link.this.type = str3;
                    return;
                }
                if (str2.equals("href")) {
                    Link.this.href = getAbsoluteUri(str3);
                    return;
                }
                if (str2.equals("hreflang")) {
                    Link.this.hrefLang = str3;
                    return;
                }
                if (str2.equals("title")) {
                    Link.this.title = str3;
                    return;
                } else {
                    if (str2.equals("length")) {
                        try {
                            Link.this.length = Integer.valueOf(str3).longValue();
                            return;
                        } catch (NumberFormatException e2) {
                            throw new ParseException(CoreErrorDomain.ERR.lengthNotInteger);
                        }
                    }
                    return;
                }
            }
            if (str.equals("http://schemas.google.com/g/2005") && str2.equals("etag")) {
                Link.this.etag = str3;
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (!str.equals(Namespaces.atom) || !str2.equals("content")) {
                return super.getChildHandler(str, str2, attributes);
            }
            if (Link.this.content != null) {
                throw new ParseException(CoreErrorDomain.ERR.duplicateContent);
            }
            Content.ChildHandlerInfo childHandler = Content.getChildHandler(this.extProfile, attributes);
            Link.this.content = childHandler.content;
            return childHandler.handler;
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (this.linkRequired && Link.this.href == null) {
                throw new ParseException(CoreErrorDomain.ERR.missingHrefAttribute);
            }
            Link.this.titleLang = this.xmlLang;
        }
    }
}
