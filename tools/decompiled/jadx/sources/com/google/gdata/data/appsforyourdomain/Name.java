package com.google.gdata.data.appsforyourdomain;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Name extends ExtensionPoint implements Extension {
    public static final String ATTRIBUTE_FAMILY_NAME = "familyName";
    public static final String ATTRIBUTE_GIVEN_NAME = "givenName";
    private static ExtensionDescription EXTENSION_DESC = new ExtensionDescription();
    public static final String EXTENSION_LOCAL_NAME = "name";
    protected String familyName;
    protected String givenName;

    static {
        EXTENSION_DESC.setExtensionClass(Name.class);
        EXTENSION_DESC.setNamespace(Namespaces.APPS_NAMESPACE);
        EXTENSION_DESC.setLocalName("name");
        EXTENSION_DESC.setRepeatable(false);
    }

    public String getFamilyName() {
        return this.familyName;
    }

    public void setFamilyName(String str) {
        this.familyName = str;
    }

    public String getGivenName() {
        return this.givenName;
    }

    public void setGivenName(String str) {
        this.givenName = str;
    }

    public static ExtensionDescription getDefaultDescription() {
        return EXTENSION_DESC;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.familyName != null) {
            arrayList.add(new XmlWriter.Attribute(ATTRIBUTE_FAMILY_NAME, this.familyName));
        }
        if (this.givenName != null) {
            arrayList.add(new XmlWriter.Attribute(ATTRIBUTE_GIVEN_NAME, this.givenName));
        }
        generateStartElement(xmlWriter, Namespaces.APPS_NAMESPACE, "name", arrayList, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.APPS_NAMESPACE, "name");
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(Name.this, extensionProfile, Name.class);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) {
            if ("".equals(str)) {
                if (Name.ATTRIBUTE_FAMILY_NAME.equals(str2)) {
                    Name.this.familyName = str3;
                } else if (Name.ATTRIBUTE_GIVEN_NAME.equals(str2)) {
                    Name.this.givenName = str3;
                }
            }
        }
    }
}
