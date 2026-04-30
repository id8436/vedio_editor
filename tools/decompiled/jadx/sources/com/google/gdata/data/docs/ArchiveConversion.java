package com.google.gdata.data.docs;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = ArchiveConversion.XML_NAME, nsAlias = DocsNamespace.DOCS_ALIAS, nsUri = "http://schemas.google.com/docs/2007")
public class ArchiveConversion extends ExtensionPoint {
    private static final String SOURCE = "source";
    private static final String TARGET = "target";
    static final String XML_NAME = "archiveConversion";
    private String source = null;
    private String target = null;

    public ArchiveConversion() {
    }

    public ArchiveConversion(String str, String str2) {
        setSource(str);
        setTarget(str2);
        setImmutable(true);
    }

    public String getSource() {
        return this.source;
    }

    public void setSource(String str) {
        throwExceptionIfImmutable();
        this.source = str;
    }

    public boolean hasSource() {
        return getSource() != null;
    }

    public String getTarget() {
        return this.target;
    }

    public void setTarget(String str) {
        throwExceptionIfImmutable();
        this.target = str;
    }

    public boolean hasTarget() {
        return getTarget() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.source == null) {
            throwExceptionForMissingAttribute("source");
        }
        if (this.target == null) {
            throwExceptionForMissingAttribute(TARGET);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(ArchiveConversion.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("source", this.source);
        attributeGenerator.put(TARGET, this.target);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.source = attributeHelper.consume("source", true);
        this.target = attributeHelper.consume(TARGET, true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        ArchiveConversion archiveConversion = (ArchiveConversion) obj;
        return eq(this.source, archiveConversion.source) && eq(this.target, archiveConversion.target);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.source != null) {
            iHashCode = (iHashCode * 37) + this.source.hashCode();
        }
        if (this.target != null) {
            return (iHashCode * 37) + this.target.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{ArchiveConversion source=" + this.source + " target=" + this.target + "}";
    }
}
