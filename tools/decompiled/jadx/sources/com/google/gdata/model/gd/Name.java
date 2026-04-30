package com.google.gdata.model.gd;

import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Name extends Element {
    public static final ElementKey<Void, Name> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "name"), Void.class, Name.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addElement(AdditionalName.KEY);
            elementCreatorBuild.addElement(FamilyName.KEY);
            elementCreatorBuild.addElement(FullName.KEY);
            elementCreatorBuild.addElement(GivenName.KEY);
            elementCreatorBuild.addElement(NamePrefix.KEY);
            elementCreatorBuild.addElement(NameSuffix.KEY);
        }
    }

    public Name() {
        super(KEY);
    }

    protected Name(ElementKey<?, ? extends Name> elementKey) {
        super(elementKey);
    }

    protected Name(ElementKey<?, ? extends Name> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Name lock() {
        return (Name) super.lock();
    }

    public AdditionalName getAdditionalName() {
        return (AdditionalName) super.getElement(AdditionalName.KEY);
    }

    public Name setAdditionalName(AdditionalName additionalName) {
        super.setElement(AdditionalName.KEY, additionalName);
        return this;
    }

    public boolean hasAdditionalName() {
        return super.hasElement(AdditionalName.KEY);
    }

    public FamilyName getFamilyName() {
        return (FamilyName) super.getElement(FamilyName.KEY);
    }

    public Name setFamilyName(FamilyName familyName) {
        super.setElement(FamilyName.KEY, familyName);
        return this;
    }

    public boolean hasFamilyName() {
        return super.hasElement(FamilyName.KEY);
    }

    public FullName getFullName() {
        return (FullName) super.getElement(FullName.KEY);
    }

    public Name setFullName(FullName fullName) {
        super.setElement(FullName.KEY, fullName);
        return this;
    }

    public boolean hasFullName() {
        return super.hasElement(FullName.KEY);
    }

    public GivenName getGivenName() {
        return (GivenName) super.getElement(GivenName.KEY);
    }

    public Name setGivenName(GivenName givenName) {
        super.setElement(GivenName.KEY, givenName);
        return this;
    }

    public boolean hasGivenName() {
        return super.hasElement(GivenName.KEY);
    }

    public NamePrefix getNamePrefix() {
        return (NamePrefix) super.getElement(NamePrefix.KEY);
    }

    public Name setNamePrefix(NamePrefix namePrefix) {
        super.setElement(NamePrefix.KEY, namePrefix);
        return this;
    }

    public boolean hasNamePrefix() {
        return super.hasElement(NamePrefix.KEY);
    }

    public NameSuffix getNameSuffix() {
        return (NameSuffix) super.getElement(NameSuffix.KEY);
    }

    public Name setNameSuffix(NameSuffix nameSuffix) {
        super.setElement(NameSuffix.KEY, nameSuffix);
        return this;
    }

    public boolean hasNameSuffix() {
        return super.hasElement(NameSuffix.KEY);
    }
}
