package com.google.gdata.data.docs;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ChangelogEntry.KIND)
public class ChangelogEntry extends BaseDocumentListEntry<ChangelogEntry> {
    public static final String KIND = "http://schemas.google.com/docs/2007#change";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "change");

    public ChangelogEntry() {
        getCategories().add(CATEGORY);
    }

    public ChangelogEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.docs.DocumentListEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(ChangelogEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(ChangelogEntry.class, Changestamp.getDefaultDescription(true, false));
            extensionProfile.declare(ChangelogEntry.class, Removed.class);
        }
    }

    public Changestamp getChangestamp() {
        return (Changestamp) getExtension(Changestamp.class);
    }

    public void setChangestamp(Changestamp changestamp) {
        if (changestamp == null) {
            removeExtension(Changestamp.class);
        } else {
            setExtension(changestamp);
        }
    }

    public boolean hasChangestamp() {
        return hasExtension(Changestamp.class);
    }

    public Removed getRemoved() {
        return (Removed) getExtension(Removed.class);
    }

    public void setRemoved(Removed removed) {
        if (removed == null) {
            removeExtension(Removed.class);
        } else {
            setExtension(removed);
        }
    }

    public boolean hasRemoved() {
        return hasExtension(Removed.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{ChangelogEntry " + super.toString() + "}";
    }
}
