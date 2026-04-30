package com.google.gdata.data.contacts;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GroupMembershipInfo.XML_NAME, nsAlias = ContactsNamespace.GCONTACT_ALIAS, nsUri = ContactsNamespace.GCONTACT)
public class GroupMembershipInfo extends ExtensionPoint {
    private static final String DELETED = "deleted";
    private static final String HREF = "href";
    static final String XML_NAME = "groupMembershipInfo";
    private Boolean deleted = null;
    private String href = null;

    public GroupMembershipInfo() {
    }

    public GroupMembershipInfo(Boolean bool, String str) {
        setDeleted(bool);
        setHref(str);
        setImmutable(true);
    }

    public Boolean getDeleted() {
        return this.deleted;
    }

    public void setDeleted(Boolean bool) {
        throwExceptionIfImmutable();
        this.deleted = bool;
    }

    public boolean hasDeleted() {
        return getDeleted() != null;
    }

    public String getHref() {
        return this.href;
    }

    public void setHref(String str) {
        throwExceptionIfImmutable();
        this.href = str;
    }

    public boolean hasHref() {
        return getHref() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.href == null) {
            throwExceptionForMissingAttribute("href");
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(GroupMembershipInfo.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(DELETED, (Object) this.deleted);
        attributeGenerator.put("href", this.href);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.deleted = Boolean.valueOf(attributeHelper.consumeBoolean(DELETED, false));
        this.href = attributeHelper.consume("href", true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        GroupMembershipInfo groupMembershipInfo = (GroupMembershipInfo) obj;
        return eq(this.deleted, groupMembershipInfo.deleted) && eq(this.href, groupMembershipInfo.href);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.deleted != null) {
            iHashCode = (iHashCode * 37) + this.deleted.hashCode();
        }
        if (this.href != null) {
            return (iHashCode * 37) + this.href.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{GroupMembershipInfo deleted=" + this.deleted + " href=" + this.href + "}";
    }
}
