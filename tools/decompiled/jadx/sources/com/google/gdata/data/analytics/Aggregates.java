package com.google.gdata.data.analytics;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Aggregates.XML_NAME, nsAlias = AnalyticsNamespace.DXP_ALIAS, nsUri = AnalyticsNamespace.DXP)
public class Aggregates extends ExtensionPoint {
    static final String XML_NAME = "aggregates";

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(Aggregates.class)) {
            extensionProfile.declare(Aggregates.class, Metric.getDefaultDescription(false, true));
        }
    }

    public List<Metric> getMetrics() {
        return getRepeatingExtension(Metric.class);
    }

    public void addMetric(Metric metric) {
        getMetrics().add(metric);
    }

    public boolean hasMetrics() {
        return hasRepeatingExtension(Metric.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Aggregates.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Aggregates}";
    }
}
