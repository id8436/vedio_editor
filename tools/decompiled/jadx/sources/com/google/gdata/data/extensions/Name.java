package com.google.gdata.data.extensions;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "name", nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class Name extends ExtensionPoint {
    static final String XML_NAME = "name";

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(Name.class)) {
            extensionProfile.declare(Name.class, AdditionalName.class);
            extensionProfile.declare(Name.class, FamilyName.class);
            extensionProfile.declare(Name.class, FullName.class);
            extensionProfile.declare(Name.class, GivenName.class);
            extensionProfile.declare(Name.class, NamePrefix.class);
            extensionProfile.declare(Name.class, NameSuffix.class);
        }
    }

    public AdditionalName getAdditionalName() {
        return (AdditionalName) getExtension(AdditionalName.class);
    }

    public void setAdditionalName(AdditionalName additionalName) {
        if (additionalName == null) {
            removeExtension(AdditionalName.class);
        } else {
            setExtension(additionalName);
        }
    }

    public boolean hasAdditionalName() {
        return hasExtension(AdditionalName.class);
    }

    public FamilyName getFamilyName() {
        return (FamilyName) getExtension(FamilyName.class);
    }

    public void setFamilyName(FamilyName familyName) {
        if (familyName == null) {
            removeExtension(FamilyName.class);
        } else {
            setExtension(familyName);
        }
    }

    public boolean hasFamilyName() {
        return hasExtension(FamilyName.class);
    }

    public FullName getFullName() {
        return (FullName) getExtension(FullName.class);
    }

    public void setFullName(FullName fullName) {
        if (fullName == null) {
            removeExtension(FullName.class);
        } else {
            setExtension(fullName);
        }
    }

    public boolean hasFullName() {
        return hasExtension(FullName.class);
    }

    public GivenName getGivenName() {
        return (GivenName) getExtension(GivenName.class);
    }

    public void setGivenName(GivenName givenName) {
        if (givenName == null) {
            removeExtension(GivenName.class);
        } else {
            setExtension(givenName);
        }
    }

    public boolean hasGivenName() {
        return hasExtension(GivenName.class);
    }

    public NamePrefix getNamePrefix() {
        return (NamePrefix) getExtension(NamePrefix.class);
    }

    public void setNamePrefix(NamePrefix namePrefix) {
        if (namePrefix == null) {
            removeExtension(NamePrefix.class);
        } else {
            setExtension(namePrefix);
        }
    }

    public boolean hasNamePrefix() {
        return hasExtension(NamePrefix.class);
    }

    public NameSuffix getNameSuffix() {
        return (NameSuffix) getExtension(NameSuffix.class);
    }

    public void setNameSuffix(NameSuffix nameSuffix) {
        if (nameSuffix == null) {
            removeExtension(NameSuffix.class);
        } else {
            setExtension(nameSuffix);
        }
    }

    public boolean hasNameSuffix() {
        return hasExtension(NameSuffix.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Name.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Name}";
    }
}
