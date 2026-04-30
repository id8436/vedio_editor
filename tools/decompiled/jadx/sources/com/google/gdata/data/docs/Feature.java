package com.google.gdata.data.docs;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Feature.XML_NAME, nsAlias = DocsNamespace.DOCS_ALIAS, nsUri = "http://schemas.google.com/docs/2007")
public class Feature extends ExtensionPoint {
    static final String XML_NAME = "feature";

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(Feature.class)) {
            extensionProfile.declare(Feature.class, FeatureName.getDefaultDescription(true, false));
            extensionProfile.declare(Feature.class, FeatureRate.class);
        }
    }

    public FeatureName getFeatureName() {
        return (FeatureName) getExtension(FeatureName.class);
    }

    public void setFeatureName(FeatureName featureName) {
        if (featureName == null) {
            removeExtension(FeatureName.class);
        } else {
            setExtension(featureName);
        }
    }

    public boolean hasFeatureName() {
        return hasExtension(FeatureName.class);
    }

    public FeatureRate getFeatureRate() {
        return (FeatureRate) getExtension(FeatureRate.class);
    }

    public void setFeatureRate(FeatureRate featureRate) {
        if (featureRate == null) {
            removeExtension(FeatureRate.class);
        } else {
            setExtension(featureRate);
        }
    }

    public boolean hasFeatureRate() {
        return hasExtension(FeatureRate.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Feature.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Feature}";
    }
}
