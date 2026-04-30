package com.google.gdata.data.sites;

import android.support.v4.app.NotificationCompat;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import com.google.gdata.data.batch.BatchId;
import com.google.gdata.data.batch.BatchInterrupted;
import com.google.gdata.data.batch.BatchOperation;
import com.google.gdata.data.batch.BatchStatus;
import com.google.gdata.data.dublincore.Publisher;
import com.google.gdata.data.extensions.Deleted;
import com.google.gdata.data.media.MediaEntry;
import com.google.gdata.data.sites.BaseContentEntry;
import com.google.gdata.data.sites.SitesLink;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseContentEntry<E extends BaseContentEntry<E>> extends MediaEntry<E> {
    public BaseContentEntry() {
    }

    public BaseContentEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(BaseContentEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(BaseContentEntry.class, new ExtensionDescription(BatchId.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), "id", false, false, false));
            extensionProfile.declare(BaseContentEntry.class, new ExtensionDescription(BatchInterrupted.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), "interrupted", false, false, false));
            extensionProfile.declare(BaseContentEntry.class, new ExtensionDescription(BatchOperation.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), "operation", false, false, false));
            extensionProfile.declare(BaseContentEntry.class, new ExtensionDescription(BatchStatus.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), NotificationCompat.CATEGORY_STATUS, false, false, false));
            extensionProfile.declare(BaseContentEntry.class, new ExtensionDescription(Deleted.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "deleted", false, false, false));
            extensionProfile.declare(BaseContentEntry.class, SitesLink.getDefaultDescription(true, true));
            extensionProfile.declare(BaseContentEntry.class, Publisher.class);
            extensionProfile.declare(BaseContentEntry.class, Revision.class);
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

    public Publisher getPublisher() {
        return (Publisher) getExtension(Publisher.class);
    }

    public void setPublisher(Publisher publisher) {
        if (publisher == null) {
            removeExtension(Publisher.class);
        } else {
            setExtension(publisher);
        }
    }

    public boolean hasPublisher() {
        return hasExtension(Publisher.class);
    }

    public Revision getRevision() {
        return (Revision) getExtension(Revision.class);
    }

    public void setRevision(Revision revision) {
        if (revision == null) {
            removeExtension(Revision.class);
        } else {
            setExtension(revision);
        }
    }

    public boolean hasRevision() {
        return hasExtension(Revision.class);
    }

    public Link getEntryPostLink() {
        return getLink(ILink.Rel.ENTRY_POST, ILink.Type.ATOM);
    }

    public Link getRevisionLink() {
        return getLink(SitesLink.Rel.REVISION, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{BaseContentEntry " + super.toString() + "}";
    }
}
