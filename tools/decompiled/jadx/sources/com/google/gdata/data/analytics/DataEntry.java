package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DataEntry extends BaseEntry<DataEntry> {
    public DataEntry() {
        setKind("analytics#datarow");
    }

    public DataEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(DataEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(DataEntry.class, Dimension.getDefaultDescription(false, true));
            extensionProfile.declare(DataEntry.class, AnalyticsLink.getDefaultDescription(false, true));
            extensionProfile.declare(DataEntry.class, Metric.getDefaultDescription(false, true));
        }
    }

    public List<Dimension> getDimensions() {
        return getRepeatingExtension(Dimension.class);
    }

    public void addDimension(Dimension dimension) {
        getDimensions().add(dimension);
    }

    public boolean hasDimensions() {
        return hasRepeatingExtension(Dimension.class);
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

    public String toString() {
        return "{DataEntry " + super.toString() + "}";
    }

    public Dimension getDimension(String str) {
        for (Dimension dimension : getDimensions()) {
            if (dimension.getName().equalsIgnoreCase(str)) {
                return dimension;
            }
        }
        return null;
    }

    public Metric getMetric(String str) {
        for (Metric metric : getMetrics()) {
            if (metric.getName().equalsIgnoreCase(str)) {
                return metric;
            }
        }
        return null;
    }

    public Long longValueOf(String str) {
        Metric metric = getMetric(str);
        if (metric == null) {
            return null;
        }
        return Long.valueOf(metric.longValue());
    }

    public Double doubleValueOf(String str) {
        Metric metric = getMetric(str);
        if (metric == null) {
            return null;
        }
        return Double.valueOf(metric.doubleValue());
    }

    public String stringValueOf(String str) {
        Dimension dimension = getDimension(str);
        if (dimension != null) {
            return dimension.getValue();
        }
        Metric metric = getMetric(str);
        if (metric != null) {
            return metric.getValue();
        }
        return null;
    }
}
