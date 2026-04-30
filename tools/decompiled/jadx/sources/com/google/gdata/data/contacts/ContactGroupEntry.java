package com.google.gdata.data.contacts;

import android.support.v4.app.NotificationCompat;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.batch.BatchId;
import com.google.gdata.data.batch.BatchInterrupted;
import com.google.gdata.data.batch.BatchOperation;
import com.google.gdata.data.batch.BatchStatus;
import com.google.gdata.data.extensions.Deleted;
import com.google.gdata.data.extensions.ExtendedProperty;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.common.xml.XmlNamespace;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ContactGroupEntry.KIND)
public class ContactGroupEntry extends BaseEntry<ContactGroupEntry> {
    public static final String KIND = "http://schemas.google.com/contact/2008#group";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public ContactGroupEntry() {
        getCategories().add(CATEGORY);
    }

    public ContactGroupEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(ContactGroupEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(ContactGroupEntry.class, new ExtensionDescription(BatchId.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), "id", false, false, false));
            extensionProfile.declare(ContactGroupEntry.class, new ExtensionDescription(BatchInterrupted.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), "interrupted", false, false, false));
            extensionProfile.declare(ContactGroupEntry.class, new ExtensionDescription(BatchOperation.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), "operation", false, false, false));
            extensionProfile.declare(ContactGroupEntry.class, new ExtensionDescription(BatchStatus.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), NotificationCompat.CATEGORY_STATUS, false, false, false));
            extensionProfile.declare(ContactGroupEntry.class, new ExtensionDescription(Deleted.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "deleted", false, false, false));
            extensionProfile.declare(ContactGroupEntry.class, new ExtensionDescription(ExtendedProperty.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "extendedProperty", false, true, false));
            extensionProfile.declare(ContactGroupEntry.class, SystemGroup.class);
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

    public List<ExtendedProperty> getExtendedProperties() {
        return getRepeatingExtension(ExtendedProperty.class);
    }

    public void addExtendedProperty(ExtendedProperty extendedProperty) {
        getExtendedProperties().add(extendedProperty);
    }

    public boolean hasExtendedProperties() {
        return hasRepeatingExtension(ExtendedProperty.class);
    }

    public SystemGroup getSystemGroup() {
        return (SystemGroup) getExtension(SystemGroup.class);
    }

    public void setSystemGroup(SystemGroup systemGroup) {
        if (systemGroup == null) {
            removeExtension(SystemGroup.class);
        } else {
            setExtension(systemGroup);
        }
    }

    public boolean hasSystemGroup() {
        return hasExtension(SystemGroup.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{ContactGroupEntry " + super.toString() + "}";
    }
}
