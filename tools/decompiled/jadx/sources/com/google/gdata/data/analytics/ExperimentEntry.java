package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes3.dex */
public class ExperimentEntry extends BaseEntry<ExperimentEntry> {
    public ExperimentEntry() {
    }

    public ExperimentEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(ExperimentEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(ExperimentEntry.class, GwoAnalyticsAccountId.class);
            extensionProfile.declare(ExperimentEntry.class, GwoAutoPruneMode.class);
            extensionProfile.declare(ExperimentEntry.class, GwoControlScript.class);
            extensionProfile.declare(ExperimentEntry.class, GwoConversionScript.class);
            extensionProfile.declare(ExperimentEntry.class, GwoCoverage.class);
            extensionProfile.declare(ExperimentEntry.class, GwoExperimentId.class);
            extensionProfile.declare(ExperimentEntry.class, GwoExperimentNotes.class);
            extensionProfile.declare(ExperimentEntry.class, GwoExperimentType.class);
            extensionProfile.declare(ExperimentEntry.class, GwoNumAbPageVariations.class);
            extensionProfile.declare(ExperimentEntry.class, GwoNumCombinations.class);
            extensionProfile.declare(ExperimentEntry.class, GwoNumSections.class);
            extensionProfile.declare(ExperimentEntry.class, GwoSourceExperimentId.class);
            extensionProfile.declare(ExperimentEntry.class, GwoStatus.class);
            extensionProfile.declare(ExperimentEntry.class, GwoTrackingScript.class);
            extensionProfile.declare(ExperimentEntry.class, GwoVerificationCombo.class);
            extensionProfile.declare(ExperimentEntry.class, GwoVerificationComboCoverage.class);
        }
    }

    public GwoAnalyticsAccountId getAnalyticsAccountId() {
        return (GwoAnalyticsAccountId) getExtension(GwoAnalyticsAccountId.class);
    }

    public void setAnalyticsAccountId(GwoAnalyticsAccountId gwoAnalyticsAccountId) {
        if (gwoAnalyticsAccountId == null) {
            removeExtension(GwoAnalyticsAccountId.class);
        } else {
            setExtension(gwoAnalyticsAccountId);
        }
    }

    public boolean hasAnalyticsAccountId() {
        return hasExtension(GwoAnalyticsAccountId.class);
    }

    public GwoAutoPruneMode getAutoPruneMode() {
        return (GwoAutoPruneMode) getExtension(GwoAutoPruneMode.class);
    }

    public void setAutoPruneMode(GwoAutoPruneMode gwoAutoPruneMode) {
        if (gwoAutoPruneMode == null) {
            removeExtension(GwoAutoPruneMode.class);
        } else {
            setExtension(gwoAutoPruneMode);
        }
    }

    public boolean hasAutoPruneMode() {
        return hasExtension(GwoAutoPruneMode.class);
    }

    public GwoControlScript getControlScript() {
        return (GwoControlScript) getExtension(GwoControlScript.class);
    }

    public void setControlScript(GwoControlScript gwoControlScript) {
        if (gwoControlScript == null) {
            removeExtension(GwoControlScript.class);
        } else {
            setExtension(gwoControlScript);
        }
    }

    public boolean hasControlScript() {
        return hasExtension(GwoControlScript.class);
    }

    public GwoConversionScript getConversionScript() {
        return (GwoConversionScript) getExtension(GwoConversionScript.class);
    }

    public void setConversionScript(GwoConversionScript gwoConversionScript) {
        if (gwoConversionScript == null) {
            removeExtension(GwoConversionScript.class);
        } else {
            setExtension(gwoConversionScript);
        }
    }

    public boolean hasConversionScript() {
        return hasExtension(GwoConversionScript.class);
    }

    public GwoCoverage getCoverage() {
        return (GwoCoverage) getExtension(GwoCoverage.class);
    }

    public void setCoverage(GwoCoverage gwoCoverage) {
        if (gwoCoverage == null) {
            removeExtension(GwoCoverage.class);
        } else {
            setExtension(gwoCoverage);
        }
    }

    public boolean hasCoverage() {
        return hasExtension(GwoCoverage.class);
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

    public GwoExperimentNotes getExperimentNotes() {
        return (GwoExperimentNotes) getExtension(GwoExperimentNotes.class);
    }

    public void setExperimentNotes(GwoExperimentNotes gwoExperimentNotes) {
        if (gwoExperimentNotes == null) {
            removeExtension(GwoExperimentNotes.class);
        } else {
            setExtension(gwoExperimentNotes);
        }
    }

    public boolean hasExperimentNotes() {
        return hasExtension(GwoExperimentNotes.class);
    }

    public GwoExperimentType getExperimentType() {
        return (GwoExperimentType) getExtension(GwoExperimentType.class);
    }

    public void setExperimentType(GwoExperimentType gwoExperimentType) {
        if (gwoExperimentType == null) {
            removeExtension(GwoExperimentType.class);
        } else {
            setExtension(gwoExperimentType);
        }
    }

    public boolean hasExperimentType() {
        return hasExtension(GwoExperimentType.class);
    }

    public GwoNumAbPageVariations getNumAbPageVariations() {
        return (GwoNumAbPageVariations) getExtension(GwoNumAbPageVariations.class);
    }

    public void setNumAbPageVariations(GwoNumAbPageVariations gwoNumAbPageVariations) {
        if (gwoNumAbPageVariations == null) {
            removeExtension(GwoNumAbPageVariations.class);
        } else {
            setExtension(gwoNumAbPageVariations);
        }
    }

    public boolean hasNumAbPageVariations() {
        return hasExtension(GwoNumAbPageVariations.class);
    }

    public GwoNumCombinations getNumCombinations() {
        return (GwoNumCombinations) getExtension(GwoNumCombinations.class);
    }

    public void setNumCombinations(GwoNumCombinations gwoNumCombinations) {
        if (gwoNumCombinations == null) {
            removeExtension(GwoNumCombinations.class);
        } else {
            setExtension(gwoNumCombinations);
        }
    }

    public boolean hasNumCombinations() {
        return hasExtension(GwoNumCombinations.class);
    }

    public GwoNumSections getNumSections() {
        return (GwoNumSections) getExtension(GwoNumSections.class);
    }

    public void setNumSections(GwoNumSections gwoNumSections) {
        if (gwoNumSections == null) {
            removeExtension(GwoNumSections.class);
        } else {
            setExtension(gwoNumSections);
        }
    }

    public boolean hasNumSections() {
        return hasExtension(GwoNumSections.class);
    }

    public GwoSourceExperimentId getSourceExperimentId() {
        return (GwoSourceExperimentId) getExtension(GwoSourceExperimentId.class);
    }

    public void setSourceExperimentId(GwoSourceExperimentId gwoSourceExperimentId) {
        if (gwoSourceExperimentId == null) {
            removeExtension(GwoSourceExperimentId.class);
        } else {
            setExtension(gwoSourceExperimentId);
        }
    }

    public boolean hasSourceExperimentId() {
        return hasExtension(GwoSourceExperimentId.class);
    }

    public GwoStatus getStatus() {
        return (GwoStatus) getExtension(GwoStatus.class);
    }

    public void setStatus(GwoStatus gwoStatus) {
        if (gwoStatus == null) {
            removeExtension(GwoStatus.class);
        } else {
            setExtension(gwoStatus);
        }
    }

    public boolean hasStatus() {
        return hasExtension(GwoStatus.class);
    }

    public GwoTrackingScript getTrackingScript() {
        return (GwoTrackingScript) getExtension(GwoTrackingScript.class);
    }

    public void setTrackingScript(GwoTrackingScript gwoTrackingScript) {
        if (gwoTrackingScript == null) {
            removeExtension(GwoTrackingScript.class);
        } else {
            setExtension(gwoTrackingScript);
        }
    }

    public boolean hasTrackingScript() {
        return hasExtension(GwoTrackingScript.class);
    }

    public GwoVerificationCombo getVerificationCombo() {
        return (GwoVerificationCombo) getExtension(GwoVerificationCombo.class);
    }

    public void setVerificationCombo(GwoVerificationCombo gwoVerificationCombo) {
        if (gwoVerificationCombo == null) {
            removeExtension(GwoVerificationCombo.class);
        } else {
            setExtension(gwoVerificationCombo);
        }
    }

    public boolean hasVerificationCombo() {
        return hasExtension(GwoVerificationCombo.class);
    }

    public GwoVerificationComboCoverage getVerificationComboCoverage() {
        return (GwoVerificationComboCoverage) getExtension(GwoVerificationComboCoverage.class);
    }

    public void setVerificationComboCoverage(GwoVerificationComboCoverage gwoVerificationComboCoverage) {
        if (gwoVerificationComboCoverage == null) {
            removeExtension(GwoVerificationComboCoverage.class);
        } else {
            setExtension(gwoVerificationComboCoverage);
        }
    }

    public boolean hasVerificationComboCoverage() {
        return hasExtension(GwoVerificationComboCoverage.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{ExperimentEntry " + super.toString() + "}";
    }
}
