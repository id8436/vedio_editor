package com.google.gdata.data.docs;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = ExportFormat.XML_NAME, nsAlias = DocsNamespace.DOCS_ALIAS, nsUri = "http://schemas.google.com/docs/2007")
public class ExportFormat extends ExtensionPoint {
    private static final String SOURCE = "source";
    private static final AttributeHelper.EnumToAttributeValue<Source> SOURCE_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.LowerCaseEnumToAttributeValue();
    private static final String TARGET = "target";
    static final String XML_NAME = "exportFormat";
    private Source source = null;
    private String target = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Source {
        DOCUMENT,
        DRAWING,
        PRESENTATION,
        SPREADSHEET
    }

    public ExportFormat() {
    }

    public ExportFormat(Source source, String str) {
        setSource(source);
        setTarget(str);
        setImmutable(true);
    }

    public Source getSource() {
        return this.source;
    }

    public void setSource(Source source) {
        throwExceptionIfImmutable();
        this.source = source;
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
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(ExportFormat.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("source", this.source, SOURCE_ENUM_TO_ATTRIBUTE_VALUE);
        attributeGenerator.put(TARGET, this.target);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.source = (Source) attributeHelper.consumeEnum("source", true, Source.class, null, SOURCE_ENUM_TO_ATTRIBUTE_VALUE);
        this.target = attributeHelper.consume(TARGET, true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        ExportFormat exportFormat = (ExportFormat) obj;
        return eq(this.source, exportFormat.source) && eq(this.target, exportFormat.target);
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
        return "{ExportFormat source=" + this.source + " target=" + this.target + "}";
    }
}
