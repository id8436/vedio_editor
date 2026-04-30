package com.google.gdata.data.extensions;

import com.adobe.creativesdk.foundation.auth.AdobeClientScope;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
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
public class Email extends ExtensionPoint implements Extension {
    protected String address;
    protected String displayName;
    protected String label;
    protected boolean primary;
    protected String quota;
    protected String rel;

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

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public String getQuota() {
        return this.quota;
    }

    public void setQuota(String str) {
        this.quota = str;
    }

    public boolean getPrimary() {
        return this.primary;
    }

    public void setPrimary(boolean z) {
        this.primary = z;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(Email.class);
        extensionDescription.setNamespace(Namespaces.gNs);
        extensionDescription.setLocalName("email");
        extensionDescription.setRepeatable(true);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.rel != null) {
            arrayList.add(new XmlWriter.Attribute("rel", this.rel));
        }
        if (this.label != null) {
            arrayList.add(new XmlWriter.Attribute("label", this.label));
        }
        if (this.address != null) {
            arrayList.add(new XmlWriter.Attribute(AdobeClientScope.ADDRESS, this.address));
        }
        if (this.quota != null) {
            arrayList.add(new XmlWriter.Attribute("quota", this.quota));
        }
        if (this.primary) {
            arrayList.add(new XmlWriter.Attribute(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary, true));
        }
        if (this.displayName != null) {
            arrayList.add(new XmlWriter.Attribute("displayName", this.displayName));
        }
        generateStartElement(xmlWriter, Namespaces.gNs, "email", arrayList, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.gNs, "email");
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(Email.this, extensionProfile, Email.class);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (str.equals("")) {
                if (str2.equals("rel")) {
                    Email.this.rel = str3;
                    return;
                }
                if (str2.equals("label")) {
                    Email.this.label = str3;
                    return;
                }
                if (str2.equals(AdobeClientScope.ADDRESS)) {
                    Email.this.address = str3;
                    return;
                }
                if (str2.equals("quota")) {
                    Email.this.quota = str3;
                    return;
                }
                if (str2.equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary)) {
                    Boolean booleanValue = parseBooleanValue(str3);
                    Email.this.primary = booleanValue != null ? booleanValue.booleanValue() : false;
                } else if (str2.equals("displayName")) {
                    Email.this.displayName = str3;
                }
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (Email.this.address == null) {
                throw new ParseException(CoreErrorDomain.ERR.missingAddressAttribute);
            }
            super.processEndElement();
        }
    }
}
