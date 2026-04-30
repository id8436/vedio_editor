package com.google.gdata.data.docs;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Link;
import com.google.gdata.data.docs.DocumentListLink;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DocumentExportEntry extends BaseEntry<DocumentExportEntry> {
    public DocumentExportEntry() {
    }

    public DocumentExportEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(DocumentExportEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(DocumentExportEntry.class, ExportDocId.getDefaultDescription(false, true));
            extensionProfile.declare(DocumentExportEntry.class, DocumentExportRequestor.class);
            extensionProfile.declare(DocumentExportEntry.class, ObjectNumber.class);
            extensionProfile.declare(DocumentExportEntry.class, QueryParameter.getDefaultDescription(false, true));
            extensionProfile.declare(DocumentExportEntry.class, ExportStatus.class);
        }
    }

    public List<ExportDocId> getExportDocIds() {
        return getRepeatingExtension(ExportDocId.class);
    }

    public void addExportDocId(ExportDocId exportDocId) {
        getExportDocIds().add(exportDocId);
    }

    public boolean hasExportDocIds() {
        return hasRepeatingExtension(ExportDocId.class);
    }

    public DocumentExportRequestor getExportRequestor() {
        return (DocumentExportRequestor) getExtension(DocumentExportRequestor.class);
    }

    public void setExportRequestor(DocumentExportRequestor documentExportRequestor) {
        if (documentExportRequestor == null) {
            removeExtension(DocumentExportRequestor.class);
        } else {
            setExtension(documentExportRequestor);
        }
    }

    public boolean hasExportRequestor() {
        return hasExtension(DocumentExportRequestor.class);
    }

    public ObjectNumber getObjectNumber() {
        return (ObjectNumber) getExtension(ObjectNumber.class);
    }

    public void setObjectNumber(ObjectNumber objectNumber) {
        if (objectNumber == null) {
            removeExtension(ObjectNumber.class);
        } else {
            setExtension(objectNumber);
        }
    }

    public boolean hasObjectNumber() {
        return hasExtension(ObjectNumber.class);
    }

    public List<QueryParameter> getQueries() {
        return getRepeatingExtension(QueryParameter.class);
    }

    public void addQuery(QueryParameter queryParameter) {
        getQueries().add(queryParameter);
    }

    public boolean hasQueries() {
        return hasRepeatingExtension(QueryParameter.class);
    }

    public ExportStatus getStatus() {
        return (ExportStatus) getExtension(ExportStatus.class);
    }

    public void setStatus(ExportStatus exportStatus) {
        if (exportStatus == null) {
            removeExtension(ExportStatus.class);
        } else {
            setExtension(exportStatus);
        }
    }

    public boolean hasStatus() {
        return hasExtension(ExportStatus.class);
    }

    public Link getDocumentExportLink() {
        return getLink(DocumentListLink.Rel.EXPORT, "application/zip");
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{DocumentExportEntry " + super.toString() + "}";
    }
}
