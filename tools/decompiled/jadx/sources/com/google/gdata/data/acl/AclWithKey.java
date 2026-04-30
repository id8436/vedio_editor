package com.google.gdata.data.acl;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = AclWithKey.XML_NAME, nsAlias = AclNamespace.gAclAlias, nsUri = AclNamespace.gAcl)
public class AclWithKey extends ExtensionPoint {
    private static final String KEY = "key";
    static final String XML_NAME = "withKey";
    private String key = null;

    public AclWithKey() {
    }

    public AclWithKey(String str, AclRole aclRole) {
        setKey(str);
        setRole(aclRole);
        setImmutable(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(AclWithKey.class, AclRole.class);
        extensionProfile.declare(AclWithKey.class, AdditionalRole.getDefaultDescription(false, true));
    }

    public String getKey() {
        return this.key;
    }

    public void setKey(String str) {
        throwExceptionIfImmutable();
        this.key = str;
    }

    public boolean hasKey() {
        return getKey() != null;
    }

    public AclRole getRole() {
        return (AclRole) getExtension(AclRole.class);
    }

    public void setRole(AclRole aclRole) {
        throwExceptionIfImmutable();
        if (aclRole == null) {
            removeExtension(AclRole.class);
        } else {
            setExtension(aclRole);
        }
    }

    public boolean hasRole() {
        return hasExtension(AclRole.class);
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

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(KEY, this.key);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.key = attributeHelper.consume(KEY, false);
    }

    public String toString() {
        return "{AclWithKey key=" + this.key + " " + super.toString() + "}";
    }
}
