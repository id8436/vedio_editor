package com.google.gdata.data.extensions;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "organization", nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class Organization extends ExtensionPoint {
    private static final String LABEL = "label";
    private static final String PRIMARY = "primary";
    private static final String REL = "rel";
    static final String XML_NAME = "organization";
    private String label = null;
    private Boolean primary = null;
    private String rel = null;

    /* JADX INFO: loaded from: classes3.dex */
    public final class Rel {
        public static final String OTHER = "http://schemas.google.com/g/2005#other";
        public static final String WORK = "http://schemas.google.com/g/2005#work";
    }

    public Organization() {
    }

    public Organization(String str, Boolean bool, String str2) {
        setLabel(str);
        setPrimary(bool);
        setRel(str2);
        setImmutable(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(Organization.class)) {
            extensionProfile.declare(Organization.class, OrgDepartment.class);
            extensionProfile.declare(Organization.class, OrgJobDescription.class);
            extensionProfile.declare(Organization.class, OrgName.class);
            extensionProfile.declare(Organization.class, OrgSymbol.class);
            extensionProfile.declare(Organization.class, OrgTitle.class);
            extensionProfile.declare(Organization.class, new ExtensionDescription(Where.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "where", false, false, false));
            new Where().declareExtensions(extensionProfile);
        }
    }

    public String getLabel() {
        return this.label;
    }

    public void setLabel(String str) {
        throwExceptionIfImmutable();
        this.label = str;
    }

    public boolean hasLabel() {
        return getLabel() != null;
    }

    public OrgDepartment getOrgDepartment() {
        return (OrgDepartment) getExtension(OrgDepartment.class);
    }

    public void setOrgDepartment(OrgDepartment orgDepartment) {
        if (orgDepartment == null) {
            removeExtension(OrgDepartment.class);
        } else {
            setExtension(orgDepartment);
        }
    }

    public boolean hasOrgDepartment() {
        return hasExtension(OrgDepartment.class);
    }

    public OrgJobDescription getOrgJobDescription() {
        return (OrgJobDescription) getExtension(OrgJobDescription.class);
    }

    public void setOrgJobDescription(OrgJobDescription orgJobDescription) {
        if (orgJobDescription == null) {
            removeExtension(OrgJobDescription.class);
        } else {
            setExtension(orgJobDescription);
        }
    }

    public boolean hasOrgJobDescription() {
        return hasExtension(OrgJobDescription.class);
    }

    public OrgName getOrgName() {
        return (OrgName) getExtension(OrgName.class);
    }

    public void setOrgName(OrgName orgName) {
        if (orgName == null) {
            removeExtension(OrgName.class);
        } else {
            setExtension(orgName);
        }
    }

    public boolean hasOrgName() {
        return hasExtension(OrgName.class);
    }

    public OrgSymbol getOrgSymbol() {
        return (OrgSymbol) getExtension(OrgSymbol.class);
    }

    public void setOrgSymbol(OrgSymbol orgSymbol) {
        if (orgSymbol == null) {
            removeExtension(OrgSymbol.class);
        } else {
            setExtension(orgSymbol);
        }
    }

    public boolean hasOrgSymbol() {
        return hasExtension(OrgSymbol.class);
    }

    public OrgTitle getOrgTitle() {
        return (OrgTitle) getExtension(OrgTitle.class);
    }

    public void setOrgTitle(OrgTitle orgTitle) {
        if (orgTitle == null) {
            removeExtension(OrgTitle.class);
        } else {
            setExtension(orgTitle);
        }
    }

    public boolean hasOrgTitle() {
        return hasExtension(OrgTitle.class);
    }

    public Boolean getPrimary() {
        return this.primary;
    }

    public void setPrimary(Boolean bool) {
        throwExceptionIfImmutable();
        this.primary = bool;
    }

    public boolean hasPrimary() {
        return getPrimary() != null;
    }

    public String getRel() {
        return this.rel;
    }

    public void setRel(String str) {
        throwExceptionIfImmutable();
        this.rel = str;
    }

    public boolean hasRel() {
        return getRel() != null;
    }

    public Where getWhere() {
        return (Where) getExtension(Where.class);
    }

    public void setWhere(Where where) {
        if (where == null) {
            removeExtension(Where.class);
        } else {
            setExtension(where);
        }
    }

    public boolean hasWhere() {
        return hasExtension(Where.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Organization.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("label", this.label);
        attributeGenerator.put("primary", (Object) this.primary);
        attributeGenerator.put(REL, this.rel);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.label = attributeHelper.consume("label", false);
        this.primary = Boolean.valueOf(attributeHelper.consumeBoolean("primary", false));
        this.rel = attributeHelper.consume(REL, false);
    }

    public String toString() {
        return "{Organization label=" + this.label + " primary=" + this.primary + " rel=" + this.rel + "}";
    }
}
