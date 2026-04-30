package com.google.gdata.data.docs;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.acl.AclNamespace;
import com.google.gdata.data.acl.AdditionalRole;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.common.xml.XmlNamespace;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = AdditionalRoleSet.XML_NAME, nsAlias = DocsNamespace.DOCS_ALIAS, nsUri = "http://schemas.google.com/docs/2007")
public class AdditionalRoleSet extends ExtensionPoint {
    private static final String PRIMARYROLE = "primaryRole";
    static final String XML_NAME = "additionalRoleSet";
    private String primaryRole = null;

    public AdditionalRoleSet() {
    }

    public AdditionalRoleSet(String str) {
        setPrimaryRole(str);
        setImmutable(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(AdditionalRoleSet.class)) {
            extensionProfile.declare(AdditionalRoleSet.class, new ExtensionDescription(AdditionalRole.class, new XmlNamespace(AclNamespace.gAclAlias, AclNamespace.gAcl), "additionalRole", false, true, false));
        }
    }

    public List<AdditionalRole> getAdditionalRoles() {
        return getRepeatingExtension(AdditionalRole.class);
    }

    public void addAdditionalRole(AdditionalRole additionalRole) {
        getAdditionalRoles().add(additionalRole);
    }

    public boolean hasAdditionalRoles() {
        return hasRepeatingExtension(AdditionalRole.class);
    }

    public String getPrimaryRole() {
        return this.primaryRole;
    }

    public void setPrimaryRole(String str) {
        throwExceptionIfImmutable();
        this.primaryRole = str;
    }

    public boolean hasPrimaryRole() {
        return getPrimaryRole() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.primaryRole == null) {
            throwExceptionForMissingAttribute(PRIMARYROLE);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(AdditionalRoleSet.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(PRIMARYROLE, this.primaryRole);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.primaryRole = attributeHelper.consume(PRIMARYROLE, true);
    }

    public String toString() {
        return "{AdditionalRoleSet primaryRole=" + this.primaryRole + "}";
    }
}
