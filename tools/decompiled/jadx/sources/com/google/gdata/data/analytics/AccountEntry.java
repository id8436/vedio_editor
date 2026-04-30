package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class AccountEntry extends BaseEntry<AccountEntry> {
    public AccountEntry() {
        setKind("analytics#account");
    }

    public AccountEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(AccountEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(AccountEntry.class, CustomVariable.getDefaultDescription(false, true));
            extensionProfile.declare(AccountEntry.class, Goal.getDefaultDescription(false, true));
            new Goal().declareExtensions(extensionProfile);
            extensionProfile.declare(AccountEntry.class, AnalyticsLink.getDefaultDescription(false, true));
            extensionProfile.declare(AccountEntry.class, Property.getDefaultDescription(false, true));
            extensionProfile.declare(AccountEntry.class, TableId.getDefaultDescription(true, false));
        }
    }

    public List<CustomVariable> getCustomVariables() {
        return getRepeatingExtension(CustomVariable.class);
    }

    public void addCustomVariable(CustomVariable customVariable) {
        getCustomVariables().add(customVariable);
    }

    public boolean hasCustomVariables() {
        return hasRepeatingExtension(CustomVariable.class);
    }

    public List<Goal> getGoals() {
        return getRepeatingExtension(Goal.class);
    }

    public void addGoal(Goal goal) {
        getGoals().add(goal);
    }

    public boolean hasGoals() {
        return hasRepeatingExtension(Goal.class);
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

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{AccountEntry " + super.toString() + "}";
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
