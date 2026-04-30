package com.google.gdata.data.extensions;

import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.codesearch.Package;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class PhoneNumber implements Extension {
    protected String label;
    protected String phoneNumber;
    protected boolean primary;
    protected String rel;
    protected String uri;

    public final class Rel {
        public static final String ASSISTANT = "http://schemas.google.com/g/2005#assistant";
        public static final String CALLBACK = "http://schemas.google.com/g/2005#callback";
        public static final String CAR = "http://schemas.google.com/g/2005#car";
        public static final String COMPANY_MAIN = "http://schemas.google.com/g/2005#company_main";
        public static final String FAX = "http://schemas.google.com/g/2005#fax";
        public static final String GENERAL = null;
        public static final String HOME = "http://schemas.google.com/g/2005#home";
        public static final String HOME_FAX = "http://schemas.google.com/g/2005#home_fax";
        public static final String INTERNAL_EXTENSION = "http://schemas.google.com/g/2005#internal-extension";
        public static final String ISDN = "http://schemas.google.com/g/2005#isdn";
        public static final String MAIN = "http://schemas.google.com/g/2005#main";
        public static final String MOBILE = "http://schemas.google.com/g/2005#mobile";
        public static final String OTHER = "http://schemas.google.com/g/2005#other";
        public static final String OTHER_FAX = "http://schemas.google.com/g/2005#other_fax";
        public static final String PAGER = "http://schemas.google.com/g/2005#pager";
        public static final String RADIO = "http://schemas.google.com/g/2005#radio";
        public static final String SATELLITE = "http://schemas.google.com/g/2005#satellite";
        public static final String TELEX = "http://schemas.google.com/g/2005#telex";
        public static final String TTY_TDD = "http://schemas.google.com/g/2005#tty_tdd";
        public static final String WORK = "http://schemas.google.com/g/2005#work";
        public static final String WORK_FAX = "http://schemas.google.com/g/2005#work_fax";
        public static final String WORK_MOBILE = "http://schemas.google.com/g/2005#work_mobile";
        public static final String WORK_PAGER = "http://schemas.google.com/g/2005#work_pager";
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

    public String getUri() {
        return this.uri;
    }

    public void setUri(String str) {
        this.uri = str;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    public boolean getPrimary() {
        return this.primary;
    }

    public void setPrimary(boolean z) {
        this.primary = z;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(PhoneNumber.class);
        extensionDescription.setNamespace(Namespaces.gNs);
        extensionDescription.setLocalName(AdobeEntitlementSession.AdobeEntitlementUserProfilePhoneNumber);
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
        if (this.uri != null) {
            arrayList.add(new XmlWriter.Attribute(Package.ATTRIBUTE_URI, this.uri));
        }
        if (this.primary) {
            arrayList.add(new XmlWriter.Attribute(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary, true));
        }
        xmlWriter.simpleElement(Namespaces.gNs, AdobeEntitlementSession.AdobeEntitlementUserProfilePhoneNumber, arrayList, this.phoneNumber);
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
                    PhoneNumber.this.rel = str3;
                    return;
                }
                if (str2.equals("label")) {
                    PhoneNumber.this.label = str3;
                    return;
                }
                if (str2.equals(Package.ATTRIBUTE_URI)) {
                    PhoneNumber.this.uri = str3;
                } else if (str2.equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary)) {
                    Boolean booleanValue = parseBooleanValue(str3);
                    PhoneNumber.this.primary = booleanValue != null ? booleanValue.booleanValue() : false;
                }
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            PhoneNumber.this.phoneNumber = this.value;
        }
    }
}
