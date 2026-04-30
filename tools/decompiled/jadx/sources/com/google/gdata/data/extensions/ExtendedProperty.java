package com.google.gdata.data.extensions;

import com.behance.sdk.util.BehanceSDKConstants;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.client.authn.oauth.OAuthParameters;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.analytics.Engagement;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlBlob;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = ExtendedProperty.EXTENDED_PROPERTY, nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class ExtendedProperty extends ExtensionPoint {
    static final String EXTENDED_PROPERTY = "extendedProperty";
    protected String name;
    protected String realm;
    protected String val;

    /* JADX INFO: loaded from: classes3.dex */
    public final class Realm {
        public static final String SHARED = "http://schemas.google.com/g/2005#shared";
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

    public boolean hasValue() {
        return this.val != null;
    }

    public String getRealm() {
        return this.realm;
    }

    public void setRealm(String str) {
        this.realm = str;
    }

    public boolean hasRealm() {
        return this.realm != null;
    }

    public String toString() {
        return Engagement.Comparison.LT + this.name + Engagement.Comparison.EQ + (hasValue() ? this.val : "") + BehanceSDKConstants.TAG_SERVER_SIDE_SEPERATOR + (hasRealm() ? this.realm : "") + Engagement.Comparison.GT;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(ExtendedProperty.class);
        extensionDescription.setNamespace(Namespaces.gNs);
        extensionDescription.setLocalName(EXTENDED_PROPERTY);
        extensionDescription.setRepeatable(true);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.name != null) {
            arrayList.add(new XmlWriter.Attribute("name", this.name));
        }
        if (this.val != null) {
            arrayList.add(new XmlWriter.Attribute("value", this.val));
        }
        if (this.realm != null) {
            arrayList.add(new XmlWriter.Attribute(OAuthParameters.REALM_KEY, this.realm));
        }
        generateStartElement(xmlWriter, Namespaces.gNs, EXTENDED_PROPERTY, arrayList, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.gNs, EXTENDED_PROPERTY);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    @Override // com.google.gdata.data.ExtensionPoint
    protected void initializeArbitraryXml(ExtensionProfile extensionProfile, Class<? extends ExtensionPoint> cls, XmlParser.ElementHandler elementHandler) {
        elementHandler.initializeXmlBlob(this.xmlBlob, true, false);
    }

    /* JADX INFO: loaded from: classes3.dex */
    class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(ExtendedProperty.this, extensionProfile, ExtendedProperty.class);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) {
            if (str.equals("")) {
                if (str2.equals("name")) {
                    ExtendedProperty.this.name = str3;
                } else if (str2.equals("value")) {
                    ExtendedProperty.this.val = str3;
                } else if (str2.equals(OAuthParameters.REALM_KEY)) {
                    ExtendedProperty.this.realm = str3;
                }
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (ExtendedProperty.this.name == null) {
                throw new ParseException(CoreErrorDomain.ERR.nameRequired);
            }
            XmlBlob xmlBlob = ExtendedProperty.this.getXmlBlob();
            if (ExtendedProperty.this.val != null && xmlBlob.getBlob() != null) {
                throw new ParseException(CoreErrorDomain.ERR.valueXmlMutuallyExclusive);
            }
            if (ExtendedProperty.this.val == null && xmlBlob.getBlob() == null) {
                throw new ParseException(CoreErrorDomain.ERR.valueOrXmlRequired);
            }
        }
    }
}
