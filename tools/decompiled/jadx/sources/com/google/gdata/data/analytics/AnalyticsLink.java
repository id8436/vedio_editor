package com.google.gdata.data.analytics;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Link;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = AnalyticsLink.XML_NAME, nsAlias = "atom", nsUri = Namespaces.atom)
public class AnalyticsLink extends Link {
    private static final String TARGETKIND = "gd:targetKind";
    static final String XML_NAME = "link";
    private String targetKind = null;

    /* JADX INFO: loaded from: classes3.dex */
    public final class Rel {
        public static final String CHILD = "http://schemas.google.com/ga/2009#child";
        public static final String PARENT = "http://schemas.google.com/ga/2009#parent";
    }

    public AnalyticsLink() {
    }

    public AnalyticsLink(String str) {
        setTargetKind(str);
        setImmutable(true);
    }

    public String getTargetKind() {
        return this.targetKind;
    }

    public void setTargetKind(String str) {
        throwExceptionIfImmutable();
        this.targetKind = str;
    }

    public boolean hasTargetKind() {
        return getTargetKind() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(AnalyticsLink.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(TARGETKIND, this.targetKind);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.targetKind = attributeHelper.consume("targetKind", false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.targetKind, ((AnalyticsLink) obj).targetKind);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.targetKind != null) {
            return (iHashCode * 37) + this.targetKind.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{AnalyticsLink targetKind=" + this.targetKind + " " + super.toString() + "}";
    }

    @Override // com.google.gdata.data.Link, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new AnalyticsLinkHandler(extensionProfile);
    }

    /* JADX INFO: loaded from: classes3.dex */
    class AnalyticsLinkHandler extends Link.AtomHandler {
        public AnalyticsLinkHandler(ExtensionProfile extensionProfile) {
            super(extensionProfile, AnalyticsLink.class);
        }

        @Override // com.google.gdata.data.Link.AtomHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            super.processAttribute(str, str2, str3);
            if (str.equals("http://schemas.google.com/g/2005") && str2.equals("targetKind")) {
                AnalyticsLink.this.targetKind = str3;
            }
        }
    }
}
