package com.google.gdata.data.projecthosting;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Repository.XML_NAME, nsAlias = ProjectHostingNamespace.PROJECTS_ALIAS, nsUri = ProjectHostingNamespace.PROJECTS)
public class Repository extends ExtensionPoint {
    private static final String TYPE = "type";
    private static final AttributeHelper.EnumToAttributeValue<Type> TYPE_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.LowerCaseEnumToAttributeValue();
    static final String XML_NAME = "repository";
    private Type type = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Type {
        HG,
        SVN
    }

    public Repository() {
    }

    public Repository(Type type) {
        setType(type);
        setImmutable(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(Repository.class)) {
            extensionProfile.declare(Repository.class, RepositoryUrl.class);
        }
    }

    public RepositoryUrl getRepositoryUrl() {
        return (RepositoryUrl) getExtension(RepositoryUrl.class);
    }

    public void setRepositoryUrl(RepositoryUrl repositoryUrl) {
        if (repositoryUrl == null) {
            removeExtension(RepositoryUrl.class);
        } else {
            setExtension(repositoryUrl);
        }
    }

    public boolean hasRepositoryUrl() {
        return hasExtension(RepositoryUrl.class);
    }

    public Type getType() {
        return this.type;
    }

    public void setType(Type type) {
        throwExceptionIfImmutable();
        this.type = type;
    }

    public boolean hasType() {
        return getType() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.type == null) {
            throwExceptionForMissingAttribute("type");
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Repository.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("type", this.type, TYPE_ENUM_TO_ATTRIBUTE_VALUE);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.type = (Type) attributeHelper.consumeEnum("type", true, Type.class, null, TYPE_ENUM_TO_ATTRIBUTE_VALUE);
    }

    public String toString() {
        return "{Repository type=" + this.type + "}";
    }
}
