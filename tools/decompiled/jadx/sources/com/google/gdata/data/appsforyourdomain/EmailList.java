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
public class EmailList extends ExtensionPoint implements Extension {
    public static final String ATTRIBUTE_NAME = "name";
    private static ExtensionDescription EXTENSION_DESC = new ExtensionDescription();
    public static final String EXTENSION_LOCAL_NAME = "emailList";
    protected String name;

    static {
        EXTENSION_DESC.setExtensionClass(EmailList.class);
        EXTENSION_DESC.setNamespace(Namespaces.APPS_NAMESPACE);
        EXTENSION_DESC.setLocalName(EXTENSION_LOCAL_NAME);
        EXTENSION_DESC.setRepeatable(false);
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public static ExtensionDescription getDefaultDescription() {
        return EXTENSION_DESC;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.name != null) {
            arrayList.add(new XmlWriter.Attribute("name", this.name));
        }
        generateStartElement(xmlWriter, Namespaces.APPS_NAMESPACE, EXTENSION_LOCAL_NAME, arrayList, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.APPS_NAMESPACE, EXTENSION_LOCAL_NAME);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new ExtensionPoint.ExtensionHandler(extensionProfile, EmailList.class) { // from class: com.google.gdata.data.appsforyourdomain.EmailList.1
            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processAttribute(String str3, String str4, String str5) {
                if ("".equals(str3) && "name".equals(str4)) {
                    EmailList.this.name = str5;
                }
            }

            @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                if (EmailList.this.name == null) {
                    throw new ParseException(Namespaces.APPS_NAMESPACE + ":" + EmailList.EXTENSION_LOCAL_NAME + "/@name is required.");
                }
                super.processEndElement();
            }
        };
    }
}
