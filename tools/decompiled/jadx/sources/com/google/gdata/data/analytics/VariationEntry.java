package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes3.dex */
public class VariationEntry extends BaseEntry<VariationEntry> {
    public VariationEntry() {
    }

    public VariationEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(VariationEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(VariationEntry.class, GwoExperimentId.class);
            extensionProfile.declare(VariationEntry.class, GwoSectionId.class);
            extensionProfile.declare(VariationEntry.class, GwoVariationId.class);
        }
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

    public GwoSectionId getSectionId() {
        return (GwoSectionId) getExtension(GwoSectionId.class);
    }

    public void setSectionId(GwoSectionId gwoSectionId) {
        if (gwoSectionId == null) {
            removeExtension(GwoSectionId.class);
        } else {
            setExtension(gwoSectionId);
        }
    }

    public boolean hasSectionId() {
        return hasExtension(GwoSectionId.class);
    }

    public GwoVariationId getVariationId() {
        return (GwoVariationId) getExtension(GwoVariationId.class);
    }

    public void setVariationId(GwoVariationId gwoVariationId) {
        if (gwoVariationId == null) {
            removeExtension(GwoVariationId.class);
        } else {
            setExtension(gwoVariationId);
        }
    }

    public boolean hasVariationId() {
        return hasExtension(GwoVariationId.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{VariationEntry " + super.toString() + "}";
    }
}
