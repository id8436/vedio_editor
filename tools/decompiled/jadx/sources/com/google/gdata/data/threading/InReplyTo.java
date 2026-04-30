package com.google.gdata.data.threading;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = InReplyTo.XML_NAME, nsAlias = ThreadingNamespace.THR_ALIAS, nsUri = ThreadingNamespace.THR)
public class InReplyTo extends ExtensionPoint {
    private static final String HREF = "href";
    private static final String REF = "ref";
    private static final String SOURCE = "source";
    private static final String TYPE = "type";
    static final String XML_NAME = "in-reply-to";
    private String href = null;
    private String ref = null;
    private String source = null;
    private String type = null;

    public InReplyTo() {
    }

    public InReplyTo(String str, String str2, String str3, String str4) {
        setHref(str);
        setRef(str2);
        setSource(str3);
        setType(str4);
        setImmutable(true);
    }

    public String getHref() {
        return this.href;
    }

    public void setHref(String str) {
        throwExceptionIfImmutable();
        this.href = str;
    }

    public boolean hasHref() {
        return getHref() != null;
    }

    public String getRef() {
        return this.ref;
    }

    public void setRef(String str) {
        throwExceptionIfImmutable();
        this.ref = str;
    }

    public boolean hasRef() {
        return getRef() != null;
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

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        throwExceptionIfImmutable();
        this.type = str;
    }

    public boolean hasType() {
        return getType() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.ref == null) {
            throwExceptionForMissingAttribute(REF);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(InReplyTo.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("href", this.href);
        attributeGenerator.put(REF, this.ref);
        attributeGenerator.put("source", this.source);
        attributeGenerator.put("type", this.type);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.href = attributeHelper.consume("href", false);
        this.ref = attributeHelper.consume(REF, true);
        this.source = attributeHelper.consume("source", false);
        this.type = attributeHelper.consume("type", false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        InReplyTo inReplyTo = (InReplyTo) obj;
        return eq(this.href, inReplyTo.href) && eq(this.ref, inReplyTo.ref) && eq(this.source, inReplyTo.source) && eq(this.type, inReplyTo.type);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.href != null) {
            iHashCode = (iHashCode * 37) + this.href.hashCode();
        }
        if (this.ref != null) {
            iHashCode = (iHashCode * 37) + this.ref.hashCode();
        }
        if (this.source != null) {
            iHashCode = (iHashCode * 37) + this.source.hashCode();
        }
        if (this.type != null) {
            return (iHashCode * 37) + this.type.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{InReplyTo href=" + this.href + " ref=" + this.ref + " source=" + this.source + " type=" + this.type + "}";
    }
}
