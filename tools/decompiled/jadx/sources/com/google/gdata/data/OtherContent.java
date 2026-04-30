package com.google.gdata.data;

import com.adobe.xmp.XMPConst;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlBlob;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.util.Base64;
import com.google.gdata.util.common.util.Base64DecoderException;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class OtherContent extends Content {
    protected byte[] bytes;
    protected Extension ext;
    protected String lang;
    protected ContentType mimeType;
    protected String text;
    protected XmlBlob xml;

    @Override // com.google.gdata.data.Content, com.google.gdata.data.IContent
    public int getType() {
        if (this.ext != null || this.xml != null) {
            return 5;
        }
        if (this.text != null) {
            return 4;
        }
        return 6;
    }

    public ContentType getMimeType() {
        return this.mimeType;
    }

    public void setMimeType(ContentType contentType) {
        this.mimeType = contentType;
    }

    @Override // com.google.gdata.data.Content, com.google.gdata.data.IContent
    public String getLang() {
        return this.lang;
    }

    public void setLang(String str) {
        this.lang = str;
    }

    public Extension getXmlContent() {
        return this.ext;
    }

    public void setXmlContent(Extension extension) {
        this.ext = extension;
        this.xml = null;
        this.text = null;
        this.bytes = null;
    }

    public XmlBlob getXml() {
        return this.xml;
    }

    public void setXml(XmlBlob xmlBlob) {
        this.ext = null;
        this.xml = xmlBlob;
        this.text = null;
        this.bytes = null;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.ext = null;
        this.xml = null;
        this.text = str;
        this.bytes = null;
    }

    public byte[] getBytes() {
        return this.bytes;
    }

    public void setBytes(byte[] bArr) {
        this.ext = null;
        this.xml = null;
        this.bytes = bArr;
        this.text = null;
    }

    @Override // com.google.gdata.data.Content
    public void generateAtom(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        String strEncode = null;
        ArrayList arrayList = new ArrayList(2);
        if (this.mimeType != null) {
            arrayList.add(new XmlWriter.Attribute("type", this.mimeType.getMediaType()));
        }
        if (this.ext != null) {
            xmlWriter.startElement(Namespaces.atomNs, "content", arrayList, null);
            this.ext.generate(xmlWriter, extensionProfile);
            xmlWriter.endElement(Namespaces.atomNs, "content");
        } else {
            if (this.xml != null) {
                XmlBlob.startElement(xmlWriter, Namespaces.atomNs, "content", this.xml, arrayList, null);
                XmlBlob.endElement(xmlWriter, Namespaces.atomNs, "content", this.xml);
                return;
            }
            if (this.text != null) {
                strEncode = this.text;
                if (this.lang != null) {
                    arrayList.add(new XmlWriter.Attribute(XMPConst.XML_LANG, this.lang));
                }
            } else if (this.bytes != null) {
                strEncode = Base64.encode(this.bytes);
                if (this.lang != null) {
                    arrayList.add(new XmlWriter.Attribute(XMPConst.XML_LANG, this.lang));
                }
            }
            xmlWriter.simpleElement(Namespaces.atomNs, "content", arrayList, strEncode);
        }
    }

    @Override // com.google.gdata.data.Content
    public void generateRss(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        if (getType() == 4) {
            xmlWriter.simpleElement(Namespaces.rssNs, "description", null, this.text);
        } else {
            generateAtom(xmlWriter, extensionProfile);
        }
    }

    public class AtomHandler extends XmlParser.ElementHandler {
        private final ExtensionProfile extProfile;
        private final int type;

        AtomHandler(ExtensionProfile extensionProfile, Attributes attributes) throws IOException {
            this.extProfile = extensionProfile;
            String value = attributes.getValue("", "type");
            if ("application/atom+xml;type=feed".equals(value)) {
                OtherContent.this.ext = new Feed();
                this.type = 5;
                return;
            }
            if ("application/atom+xml;type=entry".equals(value)) {
                this.type = 5;
                OtherContent.this.ext = new Entry();
            } else if (value.endsWith("+xml") || value.endsWith("/xml")) {
                this.type = 5;
                OtherContent.this.xml = new XmlBlob();
                initializeXmlBlob(OtherContent.this.xml, true, true);
            } else if (value.startsWith("text/")) {
                this.type = 4;
            } else {
                this.type = 6;
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (str.equals("") && str2.equals("type")) {
                try {
                    OtherContent.this.mimeType = new ContentType(str3);
                } catch (IllegalArgumentException e2) {
                    throw new ParseException(CoreErrorDomain.ERR.invalidMimeType, e2);
                }
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            return OtherContent.this.ext != null ? OtherContent.this.ext.getHandler(this.extProfile, str, str2, attributes) : super.getChildHandler(str, str2, attributes);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            switch (this.type) {
                case 4:
                    OtherContent.this.text = this.value;
                    OtherContent.this.lang = this.xmlLang;
                    return;
                case 5:
                    return;
                case 6:
                    if (this.value != null) {
                        try {
                            OtherContent.this.bytes = Base64.decode(this.value);
                        } catch (Base64DecoderException e2) {
                            throw new ParseException(CoreErrorDomain.ERR.invalidBase64);
                        }
                        break;
                    }
                    OtherContent.this.lang = this.xmlLang;
                    return;
                default:
                    throw new AssertionError("Invalid type for other content.");
            }
        }
    }
}
