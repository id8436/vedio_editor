package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes3.dex */
public class AbPageVariationEntry extends BaseEntry<AbPageVariationEntry> {
    public AbPageVariationEntry() {
    }

    public AbPageVariationEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(AbPageVariationEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(AbPageVariationEntry.class, GwoAbPageVariationId.class);
            extensionProfile.declare(AbPageVariationEntry.class, GwoExperimentId.class);
        }
    }

    public GwoAbPageVariationId getAbPageVariationId() {
        return (GwoAbPageVariationId) getExtension(GwoAbPageVariationId.class);
    }

    public void setAbPageVariationId(GwoAbPageVariationId gwoAbPageVariationId) {
        if (gwoAbPageVariationId == null) {
            removeExtension(GwoAbPageVariationId.class);
        } else {
            setExtension(gwoAbPageVariationId);
        }
    }

    public boolean hasAbPageVariationId() {
        return hasExtension(GwoAbPageVariationId.class);
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
        return "{AbPageVariationEntry " + super.toString() + "}";
    }
}
