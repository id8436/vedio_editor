package com.google.gdata.data;

import com.adobe.xmp.XMPConst;
import com.google.gdata.client.Service;
import com.google.gdata.data.TextConstruct;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class PlainTextConstruct extends TextConstruct {
    protected String text;

    public PlainTextConstruct() {
    }

    public PlainTextConstruct(String str) {
        this.text = str;
    }

    public PlainTextConstruct(String str, String str2) {
        this.text = str;
        this.lang = str2;
    }

    @Override // com.google.gdata.data.TextConstruct, com.google.gdata.data.ITextConstruct
    public int getType() {
        return 1;
    }

    @Override // com.google.gdata.data.TextConstruct
    public boolean isEmpty() {
        return getText() == null;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    @Override // com.google.gdata.data.TextConstruct, com.google.gdata.data.ITextConstruct
    public String getPlainText() {
        if (this.text != null) {
            return new String(this.text);
        }
        return null;
    }

    @Override // com.google.gdata.data.TextConstruct
    public void generateAtom(XmlWriter xmlWriter, String str) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (Service.getVersion().isCompatible(Service.Versions.V1)) {
            arrayList.add(new XmlWriter.Attribute("type", "text"));
        }
        if (this.lang != null) {
            arrayList.add(new XmlWriter.Attribute(XMPConst.XML_LANG, this.lang));
        }
        xmlWriter.simpleElement(Namespaces.atomNs, str, arrayList, this.text);
    }

    @Override // com.google.gdata.data.TextConstruct
    public void generateRss(XmlWriter xmlWriter, String str, TextConstruct.RssFormat rssFormat) throws IOException {
        xmlWriter.simpleElement(Namespaces.rssNs, str, null, this.text);
    }

    public class AtomHandler extends XmlParser.ElementHandler {
        public AtomHandler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (!str.equals("") || !str2.equals("type")) {
                super.processAttribute(str, str2, str3);
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (this.value == null) {
                this.value = "";
            }
            PlainTextConstruct.this.text = this.value;
            PlainTextConstruct.this.lang = this.xmlLang;
        }
    }
}
