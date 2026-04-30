package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes3.dex */
public class SectionEntry extends BaseEntry<SectionEntry> {
    public SectionEntry() {
    }

    public SectionEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(SectionEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(SectionEntry.class, GwoExperimentId.class);
            extensionProfile.declare(SectionEntry.class, GwoNumVariations.class);
            extensionProfile.declare(SectionEntry.class, GwoSectionBeginScript.class);
            extensionProfile.declare(SectionEntry.class, GwoSectionEndScript.class);
            extensionProfile.declare(SectionEntry.class, GwoSectionId.class);
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

    public GwoNumVariations getNumVariations() {
        return (GwoNumVariations) getExtension(GwoNumVariations.class);
    }

    public void setNumVariations(GwoNumVariations gwoNumVariations) {
        if (gwoNumVariations == null) {
            removeExtension(GwoNumVariations.class);
        } else {
            setExtension(gwoNumVariations);
        }
    }

    public boolean hasNumVariations() {
        return hasExtension(GwoNumVariations.class);
    }

    public GwoSectionBeginScript getSectionBeginScript() {
        return (GwoSectionBeginScript) getExtension(GwoSectionBeginScript.class);
    }

    public void setSectionBeginScript(GwoSectionBeginScript gwoSectionBeginScript) {
        if (gwoSectionBeginScript == null) {
            removeExtension(GwoSectionBeginScript.class);
        } else {
            setExtension(gwoSectionBeginScript);
        }
    }

    public boolean hasSectionBeginScript() {
        return hasExtension(GwoSectionBeginScript.class);
    }

    public GwoSectionEndScript getSectionEndScript() {
        return (GwoSectionEndScript) getExtension(GwoSectionEndScript.class);
    }

    public void setSectionEndScript(GwoSectionEndScript gwoSectionEndScript) {
        if (gwoSectionEndScript == null) {
            removeExtension(GwoSectionEndScript.class);
        } else {
            setExtension(gwoSectionEndScript);
        }
    }

    public boolean hasSectionEndScript() {
        return hasExtension(GwoSectionEndScript.class);
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

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{SectionEntry " + super.toString() + "}";
    }
}
