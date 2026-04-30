package com.google.gdata.data.codesearch;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.HtmlTextConstruct;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.mortbay.jetty.MimeTypes;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Match extends ExtensionPoint implements Extension {
    public static final String ATTRIBUTE_LINENUMBER = "lineNumber";
    public static final String EXTENSION_MATCH = "match";
    protected String lineNumber;
    protected HtmlTextConstruct lineText;

    public String getLineNumber() {
        return this.lineNumber;
    }

    public HtmlTextConstruct getLineText() {
        return this.lineText;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(Match.class);
        extensionDescription.setNamespace(Namespaces.gCSNs);
        extensionDescription.setLocalName(EXTENSION_MATCH);
        extensionDescription.setRepeatable(true);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.lineNumber != null) {
            arrayList.add(new XmlWriter.Attribute(ATTRIBUTE_LINENUMBER, this.lineNumber));
            arrayList.add(new XmlWriter.Attribute("type", MimeTypes.TEXT_HTML));
        }
        xmlWriter.simpleElement(Namespaces.gCSNs, EXTENSION_MATCH, arrayList, this.lineText.getPlainText());
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(Match.this, extensionProfile, Match.class);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) {
            if ("".equals(str) && Match.ATTRIBUTE_LINENUMBER.equals(str2)) {
                Match.this.lineNumber = str3;
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (Match.this.lineNumber == null) {
                throw new ParseException("http://schemas.google.com/codesearch/2006match/@lineNumber is required.");
            }
            Match.this.lineText = new HtmlTextConstruct(this.value);
        }
    }
}
