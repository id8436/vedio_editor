package com.google.gdata.data.extensions;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class OriginalEvent extends ExtensionPoint implements Extension {
    protected String href;
    protected String originalId;
    protected When originalStartTime;

    public String getHref() {
        return this.href;
    }

    public void setHref(String str) {
        this.href = str;
    }

    public String getOriginalId() {
        return this.originalId;
    }

    public void setOriginalId(String str) {
        this.originalId = str;
    }

    public When getOriginalStartTime() {
        return this.originalStartTime;
    }

    public void setOriginalStartTime(When when) {
        this.originalStartTime = when;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(OriginalEvent.class);
        extensionDescription.setNamespace(Namespaces.gNs);
        extensionDescription.setLocalName("originalEvent");
        extensionDescription.setRepeatable(false);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.originalId != null) {
            arrayList.add(new XmlWriter.Attribute("id", this.originalId));
        }
        if (this.href != null) {
            arrayList.add(new XmlWriter.Attribute("href", this.href));
        }
        generateStartElement(xmlWriter, Namespaces.gNs, "originalEvent", arrayList, null);
        if (this.originalStartTime != null) {
            this.originalStartTime.generate(xmlWriter, extensionProfile);
        }
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.gNs, "originalEvent");
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(OriginalEvent.this, extensionProfile, RecurrenceException.class);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) {
            if (str.equals("")) {
                if (str2.equals("id")) {
                    OriginalEvent.this.originalId = str3;
                } else if (str2.equals("href")) {
                    OriginalEvent.this.href = str3;
                }
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(String str, String str2, Attributes attributes) throws ParseException, IOException {
            if (!str.equals("http://schemas.google.com/g/2005") || !str2.equals("when")) {
                return super.getChildHandler(str, str2, attributes);
            }
            OriginalEvent.this.originalStartTime = new When();
            return OriginalEvent.this.originalStartTime.getHandler(this.extProfile, str, str2, attributes);
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (OriginalEvent.this.originalId == null) {
                throw new ParseException(CoreErrorDomain.ERR.idRequired);
            }
            if (OriginalEvent.this.originalStartTime == null) {
                throw new ParseException(CoreErrorDomain.ERR.whenRequired);
            }
            super.processEndElement();
        }
    }
}
