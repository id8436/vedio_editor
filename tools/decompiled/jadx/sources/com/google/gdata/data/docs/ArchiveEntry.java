package com.google.gdata.data.docs;

import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.extensions.QuotaBytesUsed;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ArchiveEntry.KIND)
public class ArchiveEntry extends BaseEntry<ArchiveEntry> {
    public static final String KIND = "http://schemas.google.com/docs/2007#archive";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, AdobeStorageSession.AdobeStorageSessionArchiveServiceTag);

    public ArchiveEntry() {
        getCategories().add(CATEGORY);
    }

    public ArchiveEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(ArchiveEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(ArchiveEntry.class, ArchiveComplete.class);
            extensionProfile.declare(ArchiveEntry.class, ArchiveConversion.getDefaultDescription(true, true));
            extensionProfile.declare(ArchiveEntry.class, ArchiveFailure.getDefaultDescription(false, true));
            extensionProfile.declare(ArchiveEntry.class, ArchiveNotify.class);
            extensionProfile.declare(ArchiveEntry.class, ArchiveNotifyStatus.class);
            extensionProfile.declare(ArchiveEntry.class, ArchiveResourceId.getDefaultDescription(false, true));
            extensionProfile.declare(ArchiveEntry.class, ArchiveStatus.class);
            extensionProfile.declare(ArchiveEntry.class, ArchiveTotal.class);
            extensionProfile.declare(ArchiveEntry.class, ArchiveTotalComplete.class);
            extensionProfile.declare(ArchiveEntry.class, ArchiveTotalFailure.class);
            extensionProfile.declare(ArchiveEntry.class, QuotaBytesUsed.class);
        }
    }

    public ArchiveComplete getArchiveComplete() {
        return (ArchiveComplete) getExtension(ArchiveComplete.class);
    }

    public void setArchiveComplete(ArchiveComplete archiveComplete) {
        if (archiveComplete == null) {
            removeExtension(ArchiveComplete.class);
        } else {
            setExtension(archiveComplete);
        }
    }

    public boolean hasArchiveComplete() {
        return hasExtension(ArchiveComplete.class);
    }

    public List<ArchiveConversion> getArchiveConversions() {
        return getRepeatingExtension(ArchiveConversion.class);
    }

    public void addArchiveConversion(ArchiveConversion archiveConversion) {
        getArchiveConversions().add(archiveConversion);
    }

    public boolean hasArchiveConversions() {
        return hasRepeatingExtension(ArchiveConversion.class);
    }

    public List<ArchiveFailure> getArchiveFailures() {
        return getRepeatingExtension(ArchiveFailure.class);
    }

    public void addArchiveFailure(ArchiveFailure archiveFailure) {
        getArchiveFailures().add(archiveFailure);
    }

    public boolean hasArchiveFailures() {
        return hasRepeatingExtension(ArchiveFailure.class);
    }

    public ArchiveNotify getArchiveNotify() {
        return (ArchiveNotify) getExtension(ArchiveNotify.class);
    }

    public void setArchiveNotify(ArchiveNotify archiveNotify) {
        if (archiveNotify == null) {
            removeExtension(ArchiveNotify.class);
        } else {
            setExtension(archiveNotify);
        }
    }

    public boolean hasArchiveNotify() {
        return hasExtension(ArchiveNotify.class);
    }

    public ArchiveNotifyStatus getArchiveNotifyStatus() {
        return (ArchiveNotifyStatus) getExtension(ArchiveNotifyStatus.class);
    }

    public void setArchiveNotifyStatus(ArchiveNotifyStatus archiveNotifyStatus) {
        if (archiveNotifyStatus == null) {
            removeExtension(ArchiveNotifyStatus.class);
        } else {
            setExtension(archiveNotifyStatus);
        }
    }

    public boolean hasArchiveNotifyStatus() {
        return hasExtension(ArchiveNotifyStatus.class);
    }

    public List<ArchiveResourceId> getArchiveResourceIds() {
        return getRepeatingExtension(ArchiveResourceId.class);
    }

    public void addArchiveResourceId(ArchiveResourceId archiveResourceId) {
        getArchiveResourceIds().add(archiveResourceId);
    }

    public boolean hasArchiveResourceIds() {
        return hasRepeatingExtension(ArchiveResourceId.class);
    }

    public ArchiveStatus getArchiveStatus() {
        return (ArchiveStatus) getExtension(ArchiveStatus.class);
    }

    public void setArchiveStatus(ArchiveStatus archiveStatus) {
        if (archiveStatus == null) {
            removeExtension(ArchiveStatus.class);
        } else {
            setExtension(archiveStatus);
        }
    }

    public boolean hasArchiveStatus() {
        return hasExtension(ArchiveStatus.class);
    }

    public ArchiveTotal getArchiveTotal() {
        return (ArchiveTotal) getExtension(ArchiveTotal.class);
    }

    public void setArchiveTotal(ArchiveTotal archiveTotal) {
        if (archiveTotal == null) {
            removeExtension(ArchiveTotal.class);
        } else {
            setExtension(archiveTotal);
        }
    }

    public boolean hasArchiveTotal() {
        return hasExtension(ArchiveTotal.class);
    }

    public ArchiveTotalComplete getArchiveTotalComplete() {
        return (ArchiveTotalComplete) getExtension(ArchiveTotalComplete.class);
    }

    public void setArchiveTotalComplete(ArchiveTotalComplete archiveTotalComplete) {
        if (archiveTotalComplete == null) {
            removeExtension(ArchiveTotalComplete.class);
        } else {
            setExtension(archiveTotalComplete);
        }
    }

    public boolean hasArchiveTotalComplete() {
        return hasExtension(ArchiveTotalComplete.class);
    }

    public ArchiveTotalFailure getArchiveTotalFailure() {
        return (ArchiveTotalFailure) getExtension(ArchiveTotalFailure.class);
    }

    public void setArchiveTotalFailure(ArchiveTotalFailure archiveTotalFailure) {
        if (archiveTotalFailure == null) {
            removeExtension(ArchiveTotalFailure.class);
        } else {
            setExtension(archiveTotalFailure);
        }
    }

    public boolean hasArchiveTotalFailure() {
        return hasExtension(ArchiveTotalFailure.class);
    }

    public QuotaBytesUsed getQuotaBytesUsed() {
        return (QuotaBytesUsed) getExtension(QuotaBytesUsed.class);
    }

    public void setQuotaBytesUsed(QuotaBytesUsed quotaBytesUsed) {
        if (quotaBytesUsed == null) {
            removeExtension(QuotaBytesUsed.class);
        } else {
            setExtension(quotaBytesUsed);
        }
    }

    public boolean hasQuotaBytesUsed() {
        return hasExtension(QuotaBytesUsed.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{ArchiveEntry " + super.toString() + "}";
    }
}
