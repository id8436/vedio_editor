package com.google.gdata.data.appsforyourdomain;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Quota extends ExtensionPoint implements Extension {
    protected Integer limit;

    public Integer getLimit() {
        return this.limit;
    }

    public void setLimit(Integer num) {
        this.limit = num;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(Quota.class);
        extensionDescription.setNamespace(Namespaces.APPS_NAMESPACE);
        extensionDescription.setLocalName("quota");
        extensionDescription.setRepeatable(false);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.limit != null) {
            arrayList.add(new XmlWriter.Attribute("limit", this.limit.toString()));
        }
        generateStartElement(xmlWriter, Namespaces.APPS_NAMESPACE, "quota", arrayList, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.APPS_NAMESPACE, "quota");
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(Quota.this, extensionProfile, Email.class);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (str.equals("") && str2.equals("limit")) {
                try {
                    Quota.this.limit = Integer.valueOf(str3);
                } catch (NumberFormatException e2) {
                    throw new ParseException("Invalid apps:quota/@limit.", e2);
                }
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (Quota.this.limit == null) {
                throw new ParseException("apps:quota/@limit is required.");
            }
            super.processEndElement();
        }
    }
}
