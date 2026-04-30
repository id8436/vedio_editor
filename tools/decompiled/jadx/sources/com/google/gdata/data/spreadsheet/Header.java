package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Header.XML_NAME, nsAlias = Namespaces.gSpreadAlias, nsUri = Namespaces.gSpread)
public class Header extends ExtensionPoint {
    private static final String ROW = "row";
    static final String XML_NAME = "header";
    private Integer row = null;

    public Header() {
    }

    public Header(Integer num) {
        setRow(num);
        setImmutable(true);
    }

    public Integer getRow() {
        return this.row;
    }

    public void setRow(Integer num) {
        throwExceptionIfImmutable();
        this.row = num;
    }

    public boolean hasRow() {
        return getRow() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.row == null) {
            throwExceptionForMissingAttribute(ROW);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Header.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(ROW, (Object) this.row);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.row = Integer.valueOf(attributeHelper.consumeInteger(ROW, true));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        return eq(this.row, ((Header) obj).row);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.row != null) {
            return (iHashCode * 37) + this.row.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Header row=" + this.row + "}";
    }
}
