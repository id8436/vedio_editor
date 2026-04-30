package com.google.gdata.data.analytics;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = DataSource.XML_NAME, nsAlias = AnalyticsNamespace.DXP_ALIAS, nsUri = AnalyticsNamespace.DXP)
public class DataSource extends ExtensionPoint {
    static final String XML_NAME = "dataSource";

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(DataSource.class)) {
            extensionProfile.declare(DataSource.class, Property.getDefaultDescription(false, true));
            extensionProfile.declare(DataSource.class, TableId.getDefaultDescription(true, false));
            extensionProfile.declare(DataSource.class, TableName.getDefaultDescription(true, false));
        }
    }

    public List<Property> getProperties() {
        return getRepeatingExtension(Property.class);
    }

    public void addProperty(Property property) {
        getProperties().add(property);
    }

    public boolean hasProperties() {
        return hasRepeatingExtension(Property.class);
    }

    public TableId getTableId() {
        return (TableId) getExtension(TableId.class);
    }

    public void setTableId(TableId tableId) {
        if (tableId == null) {
            removeExtension(TableId.class);
        } else {
            setExtension(tableId);
        }
    }

    public boolean hasTableId() {
        return hasExtension(TableId.class);
    }

    public TableName getTableName() {
        return (TableName) getExtension(TableName.class);
    }

    public void setTableName(TableName tableName) {
        if (tableName == null) {
            removeExtension(TableName.class);
        } else {
            setExtension(tableName);
        }
    }

    public boolean hasTableName() {
        return hasExtension(TableName.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(DataSource.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{DataSource}";
    }

    public String getProperty(String str) {
        if (hasProperties()) {
            for (Property property : getProperties()) {
                if (property.hasName() && property.getName().equalsIgnoreCase(str)) {
                    return property.getValue();
                }
            }
        }
        return null;
    }
}
