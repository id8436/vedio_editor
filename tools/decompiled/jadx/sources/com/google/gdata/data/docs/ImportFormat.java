package com.google.gdata.data.docs;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = ImportFormat.XML_NAME, nsAlias = DocsNamespace.DOCS_ALIAS, nsUri = "http://schemas.google.com/docs/2007")
public class ImportFormat extends ExtensionPoint {
    private static final String SOURCE = "source";
    private static final String TARGET = "target";
    private static final AttributeHelper.EnumToAttributeValue<Target> TARGET_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.LowerCaseEnumToAttributeValue();
    static final String XML_NAME = "importFormat";
    private String source = null;
    private Target target = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Target {
        DOCUMENT,
        DRAWING,
        PRESENTATION,
        SPREADSHEET
    }

    public ImportFormat() {
    }

    public ImportFormat(String str, Target target) {
        setSource(str);
        setTarget(target);
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

    public Target getTarget() {
        return this.target;
    }

    public void setTarget(Target target) {
        throwExceptionIfImmutable();
        this.target = target;
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
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(ImportFormat.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("source", this.source);
        attributeGenerator.put(TARGET, this.target, TARGET_ENUM_TO_ATTRIBUTE_VALUE);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.source = attributeHelper.consume("source", true);
        this.target = (Target) attributeHelper.consumeEnum(TARGET, true, Target.class, null, TARGET_ENUM_TO_ATTRIBUTE_VALUE);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        ImportFormat importFormat = (ImportFormat) obj;
        return eq(this.source, importFormat.source) && eq(this.target, importFormat.target);
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
        return "{ImportFormat source=" + this.source + " target=" + this.target + "}";
    }
}
