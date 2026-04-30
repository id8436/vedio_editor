package com.google.gdata.data.codesearch;

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
public class Package extends ExtensionPoint implements Extension {
    public static final String ATTRIBUTE_NAME = "name";
    public static final String ATTRIBUTE_URI = "uri";
    public static final String EXTENSION_PACKAGE = "package";
    protected String name;
    protected String uri;

    public String getName() {
        return this.name;
    }

    public String getUri() {
        return this.uri;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(Package.class);
        extensionDescription.setNamespace(Namespaces.gCSNs);
        extensionDescription.setLocalName(EXTENSION_PACKAGE);
        extensionDescription.setRepeatable(false);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.name != null) {
            arrayList.add(new XmlWriter.Attribute("name", this.name));
        }
        if (this.uri != null) {
            arrayList.add(new XmlWriter.Attribute(ATTRIBUTE_URI, this.uri));
        }
        xmlWriter.simpleElement(Namespaces.gCSNs, EXTENSION_PACKAGE, arrayList, "");
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(Package.this, extensionProfile, Package.class);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) {
            if ("".equals(str)) {
                if ("name".equals(str2)) {
                    Package.this.name = str3;
                }
                if (Package.ATTRIBUTE_URI.equals(str2)) {
                    Package.this.uri = str3;
                }
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (Package.this.name == null) {
                throw new ParseException("http://schemas.google.com/codesearch/2006package/@name is required.");
            }
            if (Package.this.uri == null) {
                throw new ParseException("http://schemas.google.com/codesearch/2006package/@uri is required.");
            }
        }
    }
}
