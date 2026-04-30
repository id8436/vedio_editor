package com.google.gdata.data.contacts;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.extensions.Deleted;
import com.google.gdata.util.common.xml.XmlNamespace;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ContactEntry.KIND)
public class ContactEntry extends BasePersonEntry<ContactEntry> {
    public static final String KIND = "http://schemas.google.com/contact/2008#contact";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public ContactEntry() {
        getCategories().add(CATEGORY);
    }

    public ContactEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.contacts.BasePersonEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(ContactEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(ContactEntry.class, new ExtensionDescription(Deleted.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "deleted", false, false, false));
            extensionProfile.declare(ContactEntry.class, GroupMembershipInfo.getDefaultDescription(false, true));
            extensionProfile.declare(ContactEntry.class, YomiName.class);
        }
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

    public List<GroupMembershipInfo> getGroupMembershipInfos() {
        return getRepeatingExtension(GroupMembershipInfo.class);
    }

    public void addGroupMembershipInfo(GroupMembershipInfo groupMembershipInfo) {
        getGroupMembershipInfos().add(groupMembershipInfo);
    }

    public boolean hasGroupMembershipInfos() {
        return hasRepeatingExtension(GroupMembershipInfo.class);
    }

    public YomiName getYomiName() {
        return (YomiName) getExtension(YomiName.class);
    }

    public void setYomiName(YomiName yomiName) {
        if (yomiName == null) {
            removeExtension(YomiName.class);
        } else {
            setExtension(yomiName);
        }
    }

    public boolean hasYomiName() {
        return hasExtension(YomiName.class);
    }

    @Override // com.google.gdata.data.contacts.BasePersonEntry, com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    @Override // com.google.gdata.data.contacts.BasePersonEntry
    public String toString() {
        return "{ContactEntry " + super.toString() + "}";
    }
}
