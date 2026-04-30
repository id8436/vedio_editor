package com.google.gdata.data;

import com.adobe.xmp.XMPConst;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.client.Service;
import com.google.gdata.data.ILink;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class OutOfLineContent extends Content implements IOutOfLineContent {
    protected String etag;
    protected String lang;
    protected long length;
    protected ContentType mimeType;
    protected String uri;

    @Override // com.google.gdata.data.Content, com.google.gdata.data.IContent
    public int getType() {
        return 7;
    }

    @Override // com.google.gdata.data.IOutOfLineContent
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

    @Override // com.google.gdata.data.IOutOfLineContent
    public String getUri() {
        return this.uri;
    }

    public void setUri(String str) {
        this.uri = str;
    }

    public long getLength() {
        return this.length;
    }

    public void setLength(long j) {
        this.length = j;
    }

    @Override // com.google.gdata.data.IOutOfLineContent
    public String getEtag() {
        return this.etag;
    }

    public void setEtag(String str) {
        this.etag = str;
    }

    @Override // com.google.gdata.data.Content
    public void generateAtom(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList(2);
        if (this.mimeType != null) {
            arrayList.add(new XmlWriter.Attribute("type", this.mimeType.getMediaType()));
        }
        if (this.uri != null) {
            arrayList.add(new XmlWriter.Attribute("src", this.uri));
        }
        if (this.etag != null && !Service.getVersion().isCompatible(Service.Versions.V1)) {
            arrayList.add(new XmlWriter.Attribute("gd", "etag", this.etag));
        }
        if (this.lang != null) {
            arrayList.add(new XmlWriter.Attribute(XMPConst.XML_LANG, this.lang));
        }
        xmlWriter.simpleElement(Namespaces.atomNs, "content", arrayList, null);
    }

    @Override // com.google.gdata.data.Content
    public void generateRss(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList(3);
        if (this.mimeType != null) {
            arrayList.add(new XmlWriter.Attribute("type", this.mimeType.getMediaType()));
        }
        if (this.uri != null) {
            arrayList.add(new XmlWriter.Attribute("url", this.uri));
        }
        if (this.length != -1) {
            arrayList.add(new XmlWriter.Attribute("length", Long.toString(this.length)));
        }
        xmlWriter.simpleElement(Namespaces.rssNs, ILink.Rel.ENCLOSURE, arrayList, null);
    }

    public class AtomHandler extends XmlParser.ElementHandler {
        public AtomHandler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (str.equals("")) {
                if (str2.equals("type")) {
                    try {
                        OutOfLineContent.this.mimeType = new ContentType(str3);
                        return;
                    } catch (IllegalArgumentException e2) {
                        throw new ParseException(CoreErrorDomain.ERR.invalidMimeType, e2);
                    }
                }
                if (str2.equals("src")) {
                    OutOfLineContent.this.uri = getAbsoluteUri(str3);
                    return;
                }
                return;
            }
            if (str.equals("http://schemas.google.com/g/2005") && str2.equals("etag")) {
                OutOfLineContent.this.setEtag(str3);
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (OutOfLineContent.this.uri == null) {
                throw new ParseException(CoreErrorDomain.ERR.missingSrcAttribute);
            }
            OutOfLineContent.this.lang = this.xmlLang;
            super.processEndElement();
        }
    }
}
