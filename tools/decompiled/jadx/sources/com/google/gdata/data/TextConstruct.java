package com.google.gdata.data;

import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.HtmlTextConstruct.AtomHandler;
import com.google.gdata.data.PlainTextConstruct.AtomHandler;
import com.google.gdata.data.XhtmlTextConstruct.AtomHandler;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlBlob;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import org.mortbay.jetty.MimeTypes;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TextConstruct implements ITextConstruct {
    static final /* synthetic */ boolean $assertionsDisabled;
    protected String lang;

    public class ChildHandlerInfo {
        public XmlParser.ElementHandler handler;
        public TextConstruct textConstruct;
    }

    public enum RssFormat {
        PLAIN_TEXT,
        FULL_HTML
    }

    public class Type {
        public static final int HTML = 2;
        public static final int TEXT = 1;
        public static final int XHTML = 3;
    }

    public abstract void generateAtom(XmlWriter xmlWriter, String str) throws IOException;

    public abstract void generateRss(XmlWriter xmlWriter, String str, RssFormat rssFormat) throws IOException;

    @Override // com.google.gdata.data.ITextConstruct
    public abstract String getPlainText();

    @Override // com.google.gdata.data.ITextConstruct
    public abstract int getType();

    public abstract boolean isEmpty();

    static {
        $assertionsDisabled = !TextConstruct.class.desiredAssertionStatus();
    }

    public String getLang() {
        return this.lang;
    }

    public void setLang(String str) {
        this.lang = str;
    }

    public static TextConstruct create(int i, String str, XmlBlob xmlBlob) {
        switch (i) {
            case 1:
                return new PlainTextConstruct(str);
            case 2:
                return new HtmlTextConstruct(str);
            case 3:
                return new XhtmlTextConstruct(xmlBlob);
            default:
                if ($assertionsDisabled) {
                    return null;
                }
                throw new AssertionError("Invalid type: " + String.valueOf(i));
        }
    }

    public static TextConstruct plainText(String str) {
        return new PlainTextConstruct(str);
    }

    public static TextConstruct html(String str) {
        return new HtmlTextConstruct(str);
    }

    public static TextConstruct xhtml(XmlBlob xmlBlob) {
        return new XhtmlTextConstruct(xmlBlob);
    }

    public static ChildHandlerInfo getChildHandler(Attributes attributes) throws ParseException, IOException {
        String value = attributes.getValue("", "type");
        ChildHandlerInfo childHandlerInfo = new ChildHandlerInfo();
        if (value == null || value.equals("text") || value.equals(MimeTypes.TEXT_PLAIN)) {
            PlainTextConstruct plainTextConstruct = new PlainTextConstruct();
            plainTextConstruct.getClass();
            childHandlerInfo.handler = plainTextConstruct.new AtomHandler();
            childHandlerInfo.textConstruct = plainTextConstruct;
        } else if (value.equals(BehanceSDKPublishConstants.KEY_HTML) || value.equals(MimeTypes.TEXT_HTML)) {
            HtmlTextConstruct htmlTextConstruct = new HtmlTextConstruct();
            htmlTextConstruct.getClass();
            childHandlerInfo.handler = htmlTextConstruct.new AtomHandler();
            childHandlerInfo.textConstruct = htmlTextConstruct;
        } else if (value.equals("xhtml")) {
            XhtmlTextConstruct xhtmlTextConstruct = new XhtmlTextConstruct();
            xhtmlTextConstruct.getClass();
            childHandlerInfo.handler = xhtmlTextConstruct.new AtomHandler();
            childHandlerInfo.textConstruct = xhtmlTextConstruct;
        } else {
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidTextContentType);
            parseException.setInternalReason("Invalid text content type: '" + value + "'");
            throw parseException;
        }
        return childHandlerInfo;
    }
}
