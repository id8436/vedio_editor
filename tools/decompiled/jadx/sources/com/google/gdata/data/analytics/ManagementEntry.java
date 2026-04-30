package com.google.gdata.data.analytics;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Link;
import com.google.gdata.data.analytics.AnalyticsLink;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ManagementEntry extends BaseEntry<ManagementEntry> {
    public ManagementEntry() {
    }

    public ManagementEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(ManagementEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(ManagementEntry.class, Goal.class);
            new Goal().declareExtensions(extensionProfile);
            extensionProfile.declare(ManagementEntry.class, AnalyticsLink.getDefaultDescription(false, true));
            extensionProfile.declare(ManagementEntry.class, Property.getDefaultDescription(false, true));
            extensionProfile.declare(ManagementEntry.class, Segment.class);
            new Segment().declareExtensions(extensionProfile);
        }
    }

    public Goal getGoal() {
        return (Goal) getExtension(Goal.class);
    }

    public void setGoal(Goal goal) {
        if (goal == null) {
            removeExtension(Goal.class);
        } else {
            setExtension(goal);
        }
    }

    public boolean hasGoal() {
        return hasExtension(Goal.class);
    }

    public List<Property> getProperties() {
        return getRepeatingExtension(Property.class);
    }

    public void addProperty(Property property) {
        getProperties().add(property);
    }

    public boolean hasProperties() {
        return hasRepeatingExtension(Property.class);
    }

    public Segment getSegment() {
        return (Segment) getExtension(Segment.class);
    }

    public void setSegment(Segment segment) {
        if (segment == null) {
            removeExtension(Segment.class);
        } else {
            setExtension(segment);
        }
    }

    public boolean hasSegment() {
        return hasExtension(Segment.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{ManagementEntry " + super.toString() + "}";
    }

    public String getProperty(String str) {
        if (hasProperties()) {
            for (Property property : getProperties()) {
                if (property.hasName() && property.getName().equalsIgnoreCase(str)) {
                    return property.getValue();
                }
            }
        }
        return null;
    }

    public List<AnalyticsLink> getParentLinks() {
        ArrayList arrayList = new ArrayList();
        for (Link link : getLinks()) {
            if (link.getRel().equals(AnalyticsLink.Rel.PARENT)) {
                arrayList.add((AnalyticsLink) link);
            }
        }
        return arrayList;
    }

    public List<AnalyticsLink> getChildLinks() {
        ArrayList arrayList = new ArrayList();
        for (Link link : getLinks()) {
            if (link.getRel().equals(AnalyticsLink.Rel.CHILD)) {
                arrayList.add((AnalyticsLink) link);
            }
        }
        return arrayList;
    }

    public AnalyticsLink getChildLink(String str) {
        for (Link link : getLinks()) {
            if (link.getRel().equals(AnalyticsLink.Rel.CHILD)) {
                AnalyticsLink analyticsLink = (AnalyticsLink) link;
                if (analyticsLink.getTargetKind().equals(str)) {
                    return analyticsLink;
                }
            }
        }
        return null;
    }
}
