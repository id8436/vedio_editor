package com.google.gdata.data.extensions;

import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class PostalAddress implements Extension {
    protected String label;
    protected boolean primary;
    protected String rel;
    protected String value;

    public final class Rel {
        public static final String GENERAL = null;
        public static final String HOME = "http://schemas.google.com/g/2005#home";
        public static final String OTHER = "http://schemas.google.com/g/2005#other";
        public static final String WORK = "http://schemas.google.com/g/2005#work";
    }

    public String getRel() {
        return this.rel;
    }

    public void setRel(String str) {
        this.rel = str;
    }

    public String getLabel() {
        return this.label;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public boolean getPrimary() {
        return this.primary;
    }

    public void setPrimary(boolean z) {
        this.primary = z;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(PostalAddress.class);
        extensionDescription.setNamespace(Namespaces.gNs);
        extensionDescription.setLocalName("postalAddress");
        extensionDescription.setRepeatable(true);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.rel != null) {
            arrayList.add(new XmlWriter.Attribute("rel", this.rel));
        }
        if (this.label != null) {
            arrayList.add(new XmlWriter.Attribute("label", this.label));
        }
        if (this.primary) {
            arrayList.add(new XmlWriter.Attribute(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary, this.primary));
        }
        xmlWriter.simpleElement(Namespaces.gNs, "postalAddress", arrayList, this.value);
    }

    @Override // com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler();
    }

    class Handler extends XmlParser.ElementHandler {
        private Handler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (str.equals("")) {
                if (str2.equals("rel")) {
                    PostalAddress.this.rel = str3;
                    return;
                }
                if (str2.equals("label")) {
                    PostalAddress.this.label = str3;
                } else if (str2.equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary)) {
                    Boolean booleanValue = parseBooleanValue(str3);
                    PostalAddress.this.primary = booleanValue != null ? booleanValue.booleanValue() : false;
                }
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            PostalAddress.this.value = this.value;
        }
    }
}
