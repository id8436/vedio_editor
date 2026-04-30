package com.google.gdata.data.appsforyourdomain.migration;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.appsforyourdomain.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Label extends ExtensionPoint implements Extension {
    public static final String ATTRIBUTE_LABEL_NAME = "labelName";
    private static ExtensionDescription EXTENSION_DESC = new ExtensionDescription();
    public static final String EXTENSION_LOCAL_NAME = "label";
    protected String labelName;

    static {
        EXTENSION_DESC.setExtensionClass(Label.class);
        EXTENSION_DESC.setNamespace(Namespaces.APPS_NAMESPACE);
        EXTENSION_DESC.setLocalName("label");
        EXTENSION_DESC.setRepeatable(true);
    }

    public Label() {
        this(null);
    }

    public Label(String str) {
        this.labelName = str;
    }

    public String getLabelName() {
        return this.labelName;
    }

    public int hashCode() {
        return (this.labelName == null ? 0 : this.labelName.hashCode()) + 31;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof Label)) {
            Label label = (Label) obj;
            return this.labelName == null ? label.labelName == null : this.labelName.equals(label.labelName);
        }
        return false;
    }

    public static ExtensionDescription getDefaultDescription() {
        return EXTENSION_DESC;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.labelName != null) {
            arrayList.add(new XmlWriter.Attribute(ATTRIBUTE_LABEL_NAME, this.labelName));
        }
        generateStartElement(xmlWriter, Namespaces.APPS_NAMESPACE, "label", arrayList, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.APPS_NAMESPACE, "label");
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(Label.this, extensionProfile, Label.class);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) {
            if ("".equals(str) && Label.ATTRIBUTE_LABEL_NAME.equals(str2)) {
                Label.this.labelName = str3;
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (Label.this.labelName == null) {
                throw new ParseException(Namespaces.APPS_NAMESPACE + ":label/@" + Label.ATTRIBUTE_LABEL_NAME + " is required.");
            }
            super.processEndElement();
        }
    }
}
