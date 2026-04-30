package com.google.gdata.data.contacts;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "status", nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class Status extends ExtensionPoint {
    private static final String INDEXED = "indexed";
    static final String XML_NAME = "status";
    private Boolean indexed = null;

    public Status() {
    }

    public Status(Boolean bool) {
        setIndexed(bool);
        setImmutable(true);
    }

    public Boolean getIndexed() {
        return this.indexed;
    }

    public void setIndexed(Boolean bool) {
        throwExceptionIfImmutable();
        this.indexed = bool;
    }

    public boolean hasIndexed() {
        return getIndexed() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Status.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(INDEXED, (Object) this.indexed);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.indexed = Boolean.valueOf(attributeHelper.consumeBoolean(INDEXED, false));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.indexed, ((Status) obj).indexed);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.indexed != null) {
            return (iHashCode * 37) + this.indexed.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Status indexed=" + this.indexed + "}";
    }
}
