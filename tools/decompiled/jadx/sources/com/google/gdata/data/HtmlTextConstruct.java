package com.google.gdata.data;

import com.adobe.xmp.XMPConst;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.data.TextConstruct;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.html.HtmlToText;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class HtmlTextConstruct extends TextConstruct {
    static final /* synthetic */ boolean $assertionsDisabled;
    protected String html;

    static {
        $assertionsDisabled = !HtmlTextConstruct.class.desiredAssertionStatus();
    }

    public HtmlTextConstruct() {
    }

    public HtmlTextConstruct(String str) {
        this.html = str;
    }

    public HtmlTextConstruct(String str, String str2) {
        this.html = str;
        this.lang = str2;
    }

    @Override // com.google.gdata.data.TextConstruct, com.google.gdata.data.ITextConstruct
    public int getType() {
        return 2;
    }

    @Override // com.google.gdata.data.TextConstruct
    public boolean isEmpty() {
        return getHtml() == null;
    }

    public String getHtml() {
        return this.html;
    }

    public void setHtml(String str) {
        this.html = str;
    }

    @Override // com.google.gdata.data.TextConstruct, com.google.gdata.data.ITextConstruct
    public String getPlainText() {
        if (isEmpty()) {
            return null;
        }
        return HtmlToText.htmlToPlainText(this.html);
    }

    @Override // com.google.gdata.data.TextConstruct
    public void generateAtom(XmlWriter xmlWriter, String str) throws IOException {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new XmlWriter.Attribute("type", BehanceSDKPublishConstants.KEY_HTML));
        if (this.lang != null) {
            arrayList.add(new XmlWriter.Attribute(XMPConst.XML_LANG, this.lang));
        }
        xmlWriter.simpleElement(Namespaces.atomNs, str, arrayList, this.html);
    }

    @Override // com.google.gdata.data.TextConstruct
    public void generateRss(XmlWriter xmlWriter, String str, TextConstruct.RssFormat rssFormat) throws IOException {
        switch (rssFormat) {
            case FULL_HTML:
                xmlWriter.simpleElement(Namespaces.rssNs, str, null, this.html);
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
            HtmlTextConstruct.this.html = this.value;
            HtmlTextConstruct.this.lang = this.xmlLang;
        }
    }
}
