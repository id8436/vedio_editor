package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes3.dex */
public class CombinationEntry extends BaseEntry<CombinationEntry> {
    public CombinationEntry() {
    }

    public CombinationEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(CombinationEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(CombinationEntry.class, GwoComboActive.class);
            extensionProfile.declare(CombinationEntry.class, GwoComboId.class);
            extensionProfile.declare(CombinationEntry.class, GwoComboString.class);
            extensionProfile.declare(CombinationEntry.class, GwoExperimentId.class);
        }
    }

    public GwoComboActive getComboActive() {
        return (GwoComboActive) getExtension(GwoComboActive.class);
    }

    public void setComboActive(GwoComboActive gwoComboActive) {
        if (gwoComboActive == null) {
            removeExtension(GwoComboActive.class);
        } else {
            setExtension(gwoComboActive);
        }
    }

    public boolean hasComboActive() {
        return hasExtension(GwoComboActive.class);
    }

    public GwoComboId getComboId() {
        return (GwoComboId) getExtension(GwoComboId.class);
    }

    public void setComboId(GwoComboId gwoComboId) {
        if (gwoComboId == null) {
            removeExtension(GwoComboId.class);
        } else {
            setExtension(gwoComboId);
        }
    }

    public boolean hasComboId() {
        return hasExtension(GwoComboId.class);
    }

    public GwoComboString getComboString() {
        return (GwoComboString) getExtension(GwoComboString.class);
    }

    public void setComboString(GwoComboString gwoComboString) {
        if (gwoComboString == null) {
            removeExtension(GwoComboString.class);
        } else {
            setExtension(gwoComboString);
        }
    }

    public boolean hasComboString() {
        return hasExtension(GwoComboString.class);
    }

    public GwoExperimentId getExperimentId() {
        return (GwoExperimentId) getExtension(GwoExperimentId.class);
    }

    public void setExperimentId(GwoExperimentId gwoExperimentId) {
        if (gwoExperimentId == null) {
            removeExtension(GwoExperimentId.class);
        } else {
            setExtension(gwoExperimentId);
        }
    }

    public boolean hasExperimentId() {
        return hasExtension(GwoExperimentId.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{CombinationEntry " + super.toString() + "}";
    }
}
