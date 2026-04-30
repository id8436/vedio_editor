package com.google.gdata.data.maps;

import android.support.v4.app.NotificationCompat;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.OutOfLineContent;
import com.google.gdata.data.batch.BatchId;
import com.google.gdata.data.batch.BatchInterrupted;
import com.google.gdata.data.batch.BatchOperation;
import com.google.gdata.data.batch.BatchStatus;
import com.google.gdata.data.extensions.CustomProperty;
import com.google.gdata.data.extensions.Deleted;
import com.google.gdata.data.extensions.FeedLink;
import com.google.gdata.data.extensions.ResourceId;
import com.google.gdata.data.maps.MapsLink;
import com.google.gdata.data.media.MediaEntry;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.common.xml.XmlNamespace;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(MapEntry.KIND)
public class MapEntry extends MediaEntry<MapEntry> {
    public static final String KIND = "http://schemas.google.com/maps/2008#map";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public MapEntry() {
        getCategories().add(CATEGORY);
    }

    public MapEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(MapEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(MapEntry.class, new ExtensionDescription(BatchId.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), "id", false, false, false));
            extensionProfile.declare(MapEntry.class, new ExtensionDescription(BatchInterrupted.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), "interrupted", false, false, false));
            extensionProfile.declare(MapEntry.class, new ExtensionDescription(BatchOperation.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), "operation", false, false, false));
            extensionProfile.declare(MapEntry.class, new ExtensionDescription(BatchStatus.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), NotificationCompat.CATEGORY_STATUS, false, false, false));
            extensionProfile.declare(MapEntry.class, CustomProperty.getDefaultDescription(false, true));
            extensionProfile.declare(MapEntry.class, new ExtensionDescription(Deleted.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "deleted", false, false, false));
            extensionProfile.declare(MapEntry.class, new ExtensionDescription(FeedLink.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "feedLink", false, false, false));
            new FeedLink().declareExtensions(extensionProfile);
            extensionProfile.declare(MapEntry.class, ResourceId.class);
        }
    }

    public BatchId getBatchId() {
        return (BatchId) getExtension(BatchId.class);
    }

    public void setBatchId(BatchId batchId) {
        if (batchId == null) {
            removeExtension(BatchId.class);
        } else {
            setExtension(batchId);
        }
    }

    public boolean hasBatchId() {
        return hasExtension(BatchId.class);
    }

    public BatchInterrupted getBatchInterrupted() {
        return (BatchInterrupted) getExtension(BatchInterrupted.class);
    }

    public void setBatchInterrupted(BatchInterrupted batchInterrupted) {
        if (batchInterrupted == null) {
            removeExtension(BatchInterrupted.class);
        } else {
            setExtension(batchInterrupted);
        }
    }

    public boolean hasBatchInterrupted() {
        return hasExtension(BatchInterrupted.class);
    }

    public BatchOperation getBatchOperation() {
        return (BatchOperation) getExtension(BatchOperation.class);
    }

    public void setBatchOperation(BatchOperation batchOperation) {
        if (batchOperation == null) {
            removeExtension(BatchOperation.class);
        } else {
            setExtension(batchOperation);
        }
    }

    public boolean hasBatchOperation() {
        return hasExtension(BatchOperation.class);
    }

    public BatchStatus getBatchStatus() {
        return (BatchStatus) getExtension(BatchStatus.class);
    }

    public void setBatchStatus(BatchStatus batchStatus) {
        if (batchStatus == null) {
            removeExtension(BatchStatus.class);
        } else {
            setExtension(batchStatus);
        }
    }

    public boolean hasBatchStatus() {
        return hasExtension(BatchStatus.class);
    }

    public List<CustomProperty> getCustomProperties() {
        return getRepeatingExtension(CustomProperty.class);
    }

    public void addCustomProperty(CustomProperty customProperty) {
        getCustomProperties().add(customProperty);
    }

    public boolean hasCustomProperties() {
        return hasRepeatingExtension(CustomProperty.class);
    }

    public Deleted getDeleted() {
        return (Deleted) getExtension(Deleted.class);
    }

    public void setDeleted(Deleted deleted) {
        if (deleted == null) {
            removeExtension(Deleted.class);
        } else {
            setExtension(deleted);
        }
    }

    public boolean hasDeleted() {
        return hasExtension(Deleted.class);
    }

    public FeedLink getFeedLink() {
        return (FeedLink) getExtension(FeedLink.class);
    }

    public void setFeedLink(FeedLink feedLink) {
        if (feedLink == null) {
            removeExtension(FeedLink.class);
        } else {
            setExtension(feedLink);
        }
    }

    public boolean hasFeedLink() {
        return hasExtension(FeedLink.class);
    }

    public ResourceId getResourceId() {
        return (ResourceId) getExtension(ResourceId.class);
    }

    public void setResourceId(ResourceId resourceId) {
        if (resourceId == null) {
            removeExtension(ResourceId.class);
        } else {
            setExtension(resourceId);
        }
    }

    public boolean hasResourceId() {
        return hasExtension(ResourceId.class);
    }

    public Link getAtomAlternateLink() {
        return getLink("alternate", ILink.Type.ATOM);
    }

    public Link getAtomFeedLink() {
        return getLink(ILink.Rel.FEED, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{MapEntry " + super.toString() + "}";
    }

    public URL getFeatureFeedUrl() {
        if (!(getContent() instanceof OutOfLineContent)) {
            return null;
        }
        try {
            return new URL(((OutOfLineContent) getContent()).getUri());
        } catch (MalformedURLException e2) {
            return null;
        }
    }

    public Link getViewLink() {
        return getLink(MapsLink.Rel.VIEW, (String) null);
    }
}
