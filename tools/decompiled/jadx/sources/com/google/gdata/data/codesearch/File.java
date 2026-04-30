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
public class File extends ExtensionPoint implements Extension {
    public static final String ATTRIBUTE_NAME = "name";
    public static final String EXTENSION_FILE = "file";
    protected String name;

    public String getName() {
        return this.name;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(File.class);
        extensionDescription.setNamespace(Namespaces.gCSNs);
        extensionDescription.setLocalName("file");
        extensionDescription.setRepeatable(false);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.name != null) {
            arrayList.add(new XmlWriter.Attribute("name", this.name));
        }
        xmlWriter.simpleElement(Namespaces.gCSNs, "file", arrayList, "");
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(File.this, extensionProfile, File.class);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) {
            if ("".equals(str) && "name".equals(str2)) {
                File.this.name = str3;
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (File.this.name == null) {
                throw new ParseException("http://schemas.google.com/codesearch/2006file/@name is required.");
            }
            super.processEndElement();
        }
    }
}
