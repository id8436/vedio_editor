package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "column", nsAlias = Namespaces.gSpreadAlias, nsUri = Namespaces.gSpread)
public class Column extends ExtensionPoint {
    private static final String INDEX = "index";
    private static final String NAME = "name";
    static final String XML_NAME = "column";
    private String index = null;
    private String name = null;

    public Column() {
    }

    public Column(String str, String str2) {
        setIndex(str);
        setName(str2);
        setImmutable(true);
    }

    public String getIndex() {
        return this.index;
    }

    public void setIndex(String str) {
        throwExceptionIfImmutable();
        this.index = str;
    }

    public boolean hasIndex() {
        return getIndex() != null;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        throwExceptionIfImmutable();
        this.name = str;
    }

    public boolean hasName() {
        return getName() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.index == null) {
            throwExceptionForMissingAttribute(INDEX);
        }
        if (this.name == null) {
            throwExceptionForMissingAttribute("name");
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Column.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(INDEX, this.index);
        attributeGenerator.put("name", this.name);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.index = attributeHelper.consume(INDEX, true);
        this.name = attributeHelper.consume("name", true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Column column = (Column) obj;
        return eq(this.index, column.index) && eq(this.name, column.name);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.index != null) {
            iHashCode = (iHashCode * 37) + this.index.hashCode();
        }
        if (this.name != null) {
            return (iHashCode * 37) + this.name.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Column index=" + this.index + " name=" + this.name + "}";
    }
}
