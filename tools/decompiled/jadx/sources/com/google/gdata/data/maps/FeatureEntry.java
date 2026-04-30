package com.google.gdata.data.maps;

import android.support.v4.app.NotificationCompat;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Content;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.OtherContent;
import com.google.gdata.data.batch.BatchId;
import com.google.gdata.data.batch.BatchInterrupted;
import com.google.gdata.data.batch.BatchOperation;
import com.google.gdata.data.batch.BatchStatus;
import com.google.gdata.data.extensions.CustomProperty;
import com.google.gdata.data.extensions.Deleted;
import com.google.gdata.data.extensions.PostalAddress;
import com.google.gdata.data.extensions.ResourceId;
import com.google.gdata.data.extensions.StructuredPostalAddress;
import com.google.gdata.data.maps.KmlContent;
import com.google.gdata.data.maps.MapsLink;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.XmlBlob;
import com.google.gdata.util.common.xml.XmlNamespace;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(FeatureEntry.KIND)
public class FeatureEntry extends BaseEntry<FeatureEntry> {
    private boolean hasView;
    private boolean isKmlDefault;
    public static final String KIND = "http://schemas.google.com/maps/2008#feature";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);
    public static final ContentType KML_CONTENT = new ContentType(KmlContent.Type.APPLICATION_VND_GOOGLE_EARTH_KML_XML);

    public FeatureEntry() {
        this.isKmlDefault = true;
        getCategories().add(CATEGORY);
    }

    public FeatureEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        this.isKmlDefault = true;
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(FeatureEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(FeatureEntry.class, new ExtensionDescription(BatchId.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), "id", false, false, false));
            extensionProfile.declare(FeatureEntry.class, new ExtensionDescription(BatchInterrupted.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), "interrupted", false, false, false));
            extensionProfile.declare(FeatureEntry.class, new ExtensionDescription(BatchOperation.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), "operation", false, false, false));
            extensionProfile.declare(FeatureEntry.class, new ExtensionDescription(BatchStatus.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), NotificationCompat.CATEGORY_STATUS, false, false, false));
            extensionProfile.declare(FeatureEntry.class, CustomProperty.getDefaultDescription(false, true));
            extensionProfile.declare(FeatureEntry.class, new ExtensionDescription(Deleted.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "deleted", false, false, false));
            extensionProfile.declare(FeatureEntry.class, new ExtensionDescription(PostalAddress.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "postalAddress", false, false, false));
            extensionProfile.declare(FeatureEntry.class, ResourceId.class);
            extensionProfile.declare(FeatureEntry.class, StructuredPostalAddress.class);
            new StructuredPostalAddress().declareExtensions(extensionProfile);
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

    public PostalAddress getPostalAddress() {
        return (PostalAddress) getExtension(PostalAddress.class);
    }

    public void setPostalAddress(PostalAddress postalAddress) {
        if (postalAddress == null) {
            removeExtension(PostalAddress.class);
        } else {
            setExtension(postalAddress);
        }
    }

    public boolean hasPostalAddress() {
        return hasExtension(PostalAddress.class);
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

    public StructuredPostalAddress getStructuredPostalAddress() {
        return (StructuredPostalAddress) getExtension(StructuredPostalAddress.class);
    }

    public void setStructuredPostalAddress(StructuredPostalAddress structuredPostalAddress) {
        if (structuredPostalAddress == null) {
            removeExtension(StructuredPostalAddress.class);
        } else {
            setExtension(structuredPostalAddress);
        }
    }

    public boolean hasStructuredPostalAddress() {
        return hasExtension(StructuredPostalAddress.class);
    }

    public Link getAtomFeedLink() {
        return getLink(ILink.Rel.FEED, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{FeatureEntry " + super.toString() + "}";
    }

    public void setKmlDefault(boolean z) {
        this.isKmlDefault = z;
    }

    public boolean hasView() {
        return this.hasView;
    }

    public void setHasView(boolean z) {
        this.hasView = z;
    }

    public Link getViewLink() {
        return getLink(MapsLink.Rel.VIEW, (String) null);
    }

    @Override // com.google.gdata.data.BaseEntry
    public void generateAtom(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        if (this.isKmlDefault) {
            xmlWriter.setDefaultNamespace(DataConstants.KML_NAMESPACE);
        }
        super.generateAtom(xmlWriter, extensionProfile);
    }

    public XmlBlob getKml() {
        Content content = getContent();
        if (content == null || !(content instanceof OtherContent)) {
            return null;
        }
        return ((OtherContent) getContent()).getXml();
    }

    public void setKml(XmlBlob xmlBlob) {
        OtherContent otherContent = new OtherContent();
        otherContent.setXml(xmlBlob);
        otherContent.setMimeType(KML_CONTENT);
        setContent(otherContent);
    }
}
