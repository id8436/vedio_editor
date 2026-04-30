package com.google.gdata.data.docs;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = AdditionalRoleInfo.XML_NAME, nsAlias = DocsNamespace.DOCS_ALIAS, nsUri = "http://schemas.google.com/docs/2007")
public class AdditionalRoleInfo extends ExtensionPoint {
    private static final String KIND = "kind";
    static final String XML_NAME = "additionalRoleInfo";
    private String kind = null;

    public AdditionalRoleInfo() {
    }

    public AdditionalRoleInfo(String str) {
        setKind(str);
        setImmutable(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(AdditionalRoleInfo.class)) {
            extensionProfile.declare(AdditionalRoleInfo.class, AdditionalRoleSet.getDefaultDescription(false, true));
            new AdditionalRoleSet().declareExtensions(extensionProfile);
        }
    }

    public List<AdditionalRoleSet> getAdditionalRoleSets() {
        return getRepeatingExtension(AdditionalRoleSet.class);
    }

    public void addAdditionalRoleSet(AdditionalRoleSet additionalRoleSet) {
        getAdditionalRoleSets().add(additionalRoleSet);
    }

    public boolean hasAdditionalRoleSets() {
        return hasRepeatingExtension(AdditionalRoleSet.class);
    }

    public String getKind() {
        return this.kind;
    }

    public void setKind(String str) {
        throwExceptionIfImmutable();
        this.kind = str;
    }

    public boolean hasKind() {
        return getKind() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.kind == null) {
            throwExceptionForMissingAttribute(KIND);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(AdditionalRoleInfo.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(KIND, this.kind);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.kind = attributeHelper.consume(KIND, true);
    }

    public String toString() {
        return "{AdditionalRoleInfo kind=" + this.kind + "}";
    }
}
