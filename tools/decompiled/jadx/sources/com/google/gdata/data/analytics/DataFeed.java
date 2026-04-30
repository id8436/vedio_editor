package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DataFeed extends BaseFeed<DataFeed, DataEntry> {
    public DataFeed() {
        super(DataEntry.class);
        setKind("analytics#data");
    }

    public DataFeed(BaseFeed<?, ?> baseFeed) {
        super(DataEntry.class, baseFeed);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(DataFeed.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(DataFeed.class, Aggregates.class);
            new Aggregates().declareExtensions(extensionProfile);
            extensionProfile.declare(DataFeed.class, ContainsSampledData.class);
            extensionProfile.declare(DataFeed.class, DataSource.getDefaultDescription(false, true));
            new DataSource().declareExtensions(extensionProfile);
            extensionProfile.declare(DataFeed.class, EndDate.getDefaultDescription(true, false));
            extensionProfile.declare(DataFeed.class, Segment.getDefaultDescription(false, true));
            new Segment().declareExtensions(extensionProfile);
            extensionProfile.declare(DataFeed.class, StartDate.getDefaultDescription(true, false));
        }
    }

    public Aggregates getAggregates() {
        return (Aggregates) getExtension(Aggregates.class);
    }

    public void setAggregates(Aggregates aggregates) {
        if (aggregates == null) {
            removeExtension(Aggregates.class);
        } else {
            setExtension(aggregates);
        }
    }

    public boolean hasAggregates() {
        return hasExtension(Aggregates.class);
    }

    public ContainsSampledData getContainsSampledData() {
        return (ContainsSampledData) getExtension(ContainsSampledData.class);
    }

    public void setContainsSampledData(ContainsSampledData containsSampledData) {
        if (containsSampledData == null) {
            removeExtension(ContainsSampledData.class);
        } else {
            setExtension(containsSampledData);
        }
    }

    public boolean hasContainsSampledData() {
        return hasExtension(ContainsSampledData.class);
    }

    public List<DataSource> getDataSources() {
        return getRepeatingExtension(DataSource.class);
    }

    public void addDataSource(DataSource dataSource) {
        getDataSources().add(dataSource);
    }

    public boolean hasDataSources() {
        return hasRepeatingExtension(DataSource.class);
    }

    public EndDate getEndDate() {
        return (EndDate) getExtension(EndDate.class);
    }

    public void setEndDate(EndDate endDate) {
        if (endDate == null) {
            removeExtension(EndDate.class);
        } else {
            setExtension(endDate);
        }
    }

    public boolean hasEndDate() {
        return hasExtension(EndDate.class);
    }

    public List<Segment> getSegments() {
        return getRepeatingExtension(Segment.class);
    }

    public void addSegment(Segment segment) {
        getSegments().add(segment);
    }

    public boolean hasSegments() {
        return hasRepeatingExtension(Segment.class);
    }

    public StartDate getStartDate() {
        return (StartDate) getExtension(StartDate.class);
    }

    public void setStartDate(StartDate startDate) {
        if (startDate == null) {
            removeExtension(StartDate.class);
        } else {
            setExtension(startDate);
        }
    }

    public boolean hasStartDate() {
        return hasExtension(StartDate.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{DataFeed " + super.toString() + "}";
    }
}
