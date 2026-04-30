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
public class Property extends ExtensionPoint implements Extension {
    private static final String ATTRIBUTE_NAME = "name";
    private static final String ATTRIBUTE_VALUE = "value";
    private static final ExtensionDescription EXTENSION_DESCRIPTION = new ExtensionDescription();
    private static final String EXTENSION_LOCAL_NAME = "property";
    protected String name;
    protected String val;

    static {
        EXTENSION_DESCRIPTION.setExtensionClass(Property.class);
        EXTENSION_DESCRIPTION.setNamespace(Namespaces.APPS_NAMESPACE);
        EXTENSION_DESCRIPTION.setLocalName(EXTENSION_LOCAL_NAME);
        EXTENSION_DESCRIPTION.setRepeatable(true);
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getValue() {
        return this.val;
    }

    public void setValue(String str) {
        this.val = str;
    }

    public static ExtensionDescription getDefaultDescription() {
        return EXTENSION_DESCRIPTION;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.name != null) {
            arrayList.add(new XmlWriter.Attribute("name", this.name));
        }
        if (this.val != null) {
            arrayList.add(new XmlWriter.Attribute(ATTRIBUTE_VALUE, this.val));
        }
        generateStartElement(xmlWriter, Namespaces.APPS_NAMESPACE, EXTENSION_LOCAL_NAME, arrayList, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.APPS_NAMESPACE, EXTENSION_LOCAL_NAME);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(Property.this, extensionProfile, Property.class);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) {
            if (str.equals("")) {
                if (str2.equals("name")) {
                    Property.this.name = str3;
                } else if (str2.equals(Property.ATTRIBUTE_VALUE)) {
                    Property.this.val = str3;
                }
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (Property.this.name == null) {
                throw new ParseException("apps:property/@name is required.");
            }
            if (Property.this.val == null) {
                throw new ParseException("apps:property/@value is required.");
            }
        }
    }
}
