package com.google.gdata.data;

import com.adobe.xmp.XMPConst;
import com.google.gdata.data.TextConstruct;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlBlob;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.html.HtmlToText;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class XhtmlTextConstruct extends TextConstruct {
    static final /* synthetic */ boolean $assertionsDisabled;
    protected XmlBlob xhtml;

    static {
        $assertionsDisabled = !XhtmlTextConstruct.class.desiredAssertionStatus();
    }

    public XhtmlTextConstruct() {
    }

    public XhtmlTextConstruct(XmlBlob xmlBlob) {
        this.xhtml = xmlBlob;
    }

    public XhtmlTextConstruct(XmlBlob xmlBlob, String str) {
        this.xhtml = xmlBlob;
        this.lang = str;
    }

    @Override // com.google.gdata.data.TextConstruct, com.google.gdata.data.ITextConstruct
    public int getType() {
        return 3;
    }

    @Override // com.google.gdata.data.TextConstruct
    public boolean isEmpty() {
        return this.xhtml == null;
    }

    public XmlBlob getXhtml() {
        if (this.xhtml == null) {
            this.xhtml = new XmlBlob();
        }
        return this.xhtml;
    }

    public void setXhtml(XmlBlob xmlBlob) {
        this.xhtml = xmlBlob;
    }

    @Override // com.google.gdata.data.TextConstruct, com.google.gdata.data.ITextConstruct
    public String getPlainText() {
        if (this.xhtml == null) {
            return null;
        }
        try {
            StringWriter stringWriter = new StringWriter();
            new XmlWriter(stringWriter).innerXml(this.xhtml.getBlob());
            return HtmlToText.htmlToPlainText(stringWriter.toString());
        } catch (IOException e2) {
            return null;
        }
    }

    @Override // com.google.gdata.data.TextConstruct
    public void generateAtom(XmlWriter xmlWriter, String str) throws IOException {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new XmlWriter.Attribute("type", "xhtml"));
        if (this.lang != null) {
            arrayList.add(new XmlWriter.Attribute(XMPConst.XML_LANG, this.lang));
        }
        XmlBlob.startElement(xmlWriter, Namespaces.atomNs, str, this.xhtml, arrayList, null);
        XmlBlob.endElement(xmlWriter, Namespaces.atomNs, str, this.xhtml);
    }

    @Override // com.google.gdata.data.TextConstruct
    public void generateRss(XmlWriter xmlWriter, String str, TextConstruct.RssFormat rssFormat) throws IOException {
        switch (rssFormat) {
            case FULL_HTML:
                StringWriter stringWriter = new StringWriter();
                new XmlWriter(stringWriter).innerXml(this.xhtml.getBlob());
                xmlWriter.simpleElement(Namespaces.rssNs, str, null, stringWriter.toString());
                return;
            case PLAIN_TEXT:
                xmlWriter.simpleElement(Namespaces.rssNs, str, null, getPlainText());
                return;
            default:
                if (!$assertionsDisabled) {
                    throw new AssertionError();
                }
                return;
        }
    }

    public class AtomHandler extends XmlParser.ElementHandler {
        public AtomHandler() throws IOException {
            XhtmlTextConstruct.this.xhtml = new XmlBlob();
            initializeXmlBlob(XhtmlTextConstruct.this.xhtml, true, true);
            XhtmlTextConstruct.this.lang = this.xmlLang;
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (str.equals("http://www.w3.org/XML/1998/namespace") && str2.equals("lang")) {
                XhtmlTextConstruct.this.lang = this.xmlLang;
            }
        }
    }
}
