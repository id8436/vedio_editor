package com.google.gdata.data.acl;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(AclEntry.ACCESS_RULE_KIND)
public class AclEntry extends BaseEntry<AclEntry> {
    public static final String ACCESS_RULE_KIND = "http://schemas.google.com/acl/2007#accessRule";
    public static final Category ACCESS_RULE_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", ACCESS_RULE_KIND);

    public AclEntry() {
        getCategories().add(ACCESS_RULE_CATEGORY);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(AclEntry.class, AclScope.class);
        extensionProfile.declare(AclEntry.class, AclRole.class);
        extensionProfile.declare(AclEntry.class, AclWithKey.class);
        new AclWithKey().declareExtensions(extensionProfile);
        extensionProfile.declare(AclEntry.class, AdditionalRole.getDefaultDescription(false, true));
    }

    public AclScope getScope() {
        return (AclScope) getExtension(AclScope.class);
    }

    public void setScope(AclScope aclScope) {
        setExtension(aclScope);
    }

    public AclRole getRole() {
        return (AclRole) getExtension(AclRole.class);
    }

    public void setRole(AclRole aclRole) {
        setExtension(aclRole);
    }

    public AclWithKey getWithKey() {
        return (AclWithKey) getExtension(AclWithKey.class);
    }

    public void setWithKey(AclWithKey aclWithKey) {
        setExtension(aclWithKey);
    }

    public List<AdditionalRole> getAdditionalRoles() {
        return getRepeatingExtension(AdditionalRole.class);
    }

    public void addAdditionalRole(AdditionalRole additionalRole) {
        addRepeatingExtension(additionalRole);
    }

    public void clearAdditionalRoles() {
        getAdditionalRoles().clear();
    }
}
