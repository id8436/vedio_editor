package com.google.gdata.data.projecthosting;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Updates.XML_NAME, nsAlias = ProjectHostingNamespace.ISSUES_ALIAS, nsUri = ProjectHostingNamespace.ISSUES)
public class Updates extends ExtensionPoint {
    static final String XML_NAME = "updates";

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(Updates.class)) {
            extensionProfile.declare(Updates.class, BlockedOnUpdate.getDefaultDescription(false, true));
            extensionProfile.declare(Updates.class, CcUpdate.getDefaultDescription(false, true));
            extensionProfile.declare(Updates.class, Label.getDefaultDescription(false, true));
            extensionProfile.declare(Updates.class, MergedIntoUpdate.class);
            extensionProfile.declare(Updates.class, OwnerUpdate.class);
            extensionProfile.declare(Updates.class, Status.class);
            extensionProfile.declare(Updates.class, Summary.class);
        }
    }

    public List<BlockedOnUpdate> getBlockedOnUpdates() {
        return getRepeatingExtension(BlockedOnUpdate.class);
    }

    public void addBlockedOnUpdate(BlockedOnUpdate blockedOnUpdate) {
        getBlockedOnUpdates().add(blockedOnUpdate);
    }

    public boolean hasBlockedOnUpdates() {
        return hasRepeatingExtension(BlockedOnUpdate.class);
    }

    public List<CcUpdate> getCcUpdates() {
        return getRepeatingExtension(CcUpdate.class);
    }

    public void addCcUpdate(CcUpdate ccUpdate) {
        getCcUpdates().add(ccUpdate);
    }

    public boolean hasCcUpdates() {
        return hasRepeatingExtension(CcUpdate.class);
    }

    public List<Label> getLabels() {
        return getRepeatingExtension(Label.class);
    }

    public void addLabel(Label label) {
        getLabels().add(label);
    }

    public boolean hasLabels() {
        return hasRepeatingExtension(Label.class);
    }

    public MergedIntoUpdate getMergedIntoUpdate() {
        return (MergedIntoUpdate) getExtension(MergedIntoUpdate.class);
    }

    public void setMergedIntoUpdate(MergedIntoUpdate mergedIntoUpdate) {
        if (mergedIntoUpdate == null) {
            removeExtension(MergedIntoUpdate.class);
        } else {
            setExtension(mergedIntoUpdate);
        }
    }

    public boolean hasMergedIntoUpdate() {
        return hasExtension(MergedIntoUpdate.class);
    }

    public OwnerUpdate getOwnerUpdate() {
        return (OwnerUpdate) getExtension(OwnerUpdate.class);
    }

    public void setOwnerUpdate(OwnerUpdate ownerUpdate) {
        if (ownerUpdate == null) {
            removeExtension(OwnerUpdate.class);
        } else {
            setExtension(ownerUpdate);
        }
    }

    public boolean hasOwnerUpdate() {
        return hasExtension(OwnerUpdate.class);
    }

    public Status getStatus() {
        return (Status) getExtension(Status.class);
    }

    public void setStatus(Status status) {
        if (status == null) {
            removeExtension(Status.class);
        } else {
            setExtension(status);
        }
    }

    public boolean hasStatus() {
        return hasExtension(Status.class);
    }

    public Summary getSummary() {
        return (Summary) getExtension(Summary.class);
    }

    public void setSummary(Summary summary) {
        if (summary == null) {
            removeExtension(Summary.class);
        } else {
            setExtension(summary);
        }
    }

    public boolean hasSummary() {
        return hasExtension(Summary.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Updates.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Updates}";
    }
}
