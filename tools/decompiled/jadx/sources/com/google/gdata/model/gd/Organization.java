package com.google.gdata.model.gd;

import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.google.gdata.data.contacts.ExternalId;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Organization extends Element {
    public static final ElementKey<Void, Organization> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, ExternalId.Rel.ORGANIZATION), Void.class, Organization.class);
    public static final AttributeKey<String> LABEL = AttributeKey.of(new QName(null, "label"), String.class);
    public static final AttributeKey<Boolean> PRIMARY = AttributeKey.of(new QName(null, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary), Boolean.class);
    public static final AttributeKey<String> REL = AttributeKey.of(new QName(null, "rel"), String.class);

    public final class Rel {
        private static final String[] ALL_VALUES = {"http://schemas.google.com/g/2005#other", "http://schemas.google.com/g/2005#work"};
        public static final String OTHER = "http://schemas.google.com/g/2005#other";
        public static final String WORK = "http://schemas.google.com/g/2005#work";

        public static String[] values() {
            return ALL_VALUES;
        }

        private Rel() {
        }
    }

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(LABEL);
            elementCreatorBuild.addAttribute(PRIMARY);
            elementCreatorBuild.addAttribute(REL);
            elementCreatorBuild.addElement(OrgDepartment.KEY);
            elementCreatorBuild.addElement(OrgJobDescription.KEY);
            elementCreatorBuild.addElement(OrgName.KEY);
            elementCreatorBuild.addElement(OrgSymbol.KEY);
            elementCreatorBuild.addElement(OrgTitle.KEY);
            elementCreatorBuild.addElement(Where.KEY);
        }
    }

    public Organization() {
        super(KEY);
    }

    protected Organization(ElementKey<?, ? extends Organization> elementKey) {
        super(elementKey);
    }

    protected Organization(ElementKey<?, ? extends Organization> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Organization lock() {
        return (Organization) super.lock();
    }

    public String getLabel() {
        return (String) super.getAttributeValue(LABEL);
    }

    public Organization setLabel(String str) {
        super.setAttributeValue(LABEL, str);
        return this;
    }

    public boolean hasLabel() {
        return super.hasAttribute(LABEL);
    }

    public OrgDepartment getOrgDepartment() {
        return (OrgDepartment) super.getElement(OrgDepartment.KEY);
    }

    public Organization setOrgDepartment(OrgDepartment orgDepartment) {
        super.setElement(OrgDepartment.KEY, orgDepartment);
        return this;
    }

    public boolean hasOrgDepartment() {
        return super.hasElement(OrgDepartment.KEY);
    }

    public OrgJobDescription getOrgJobDescription() {
        return (OrgJobDescription) super.getElement(OrgJobDescription.KEY);
    }

    public Organization setOrgJobDescription(OrgJobDescription orgJobDescription) {
        super.setElement(OrgJobDescription.KEY, orgJobDescription);
        return this;
    }

    public boolean hasOrgJobDescription() {
        return super.hasElement(OrgJobDescription.KEY);
    }

    public OrgName getOrgName() {
        return (OrgName) super.getElement(OrgName.KEY);
    }

    public Organization setOrgName(OrgName orgName) {
        super.setElement(OrgName.KEY, orgName);
        return this;
    }

    public boolean hasOrgName() {
        return super.hasElement(OrgName.KEY);
    }

    public OrgSymbol getOrgSymbol() {
        return (OrgSymbol) super.getElement(OrgSymbol.KEY);
    }

    public Organization setOrgSymbol(OrgSymbol orgSymbol) {
        super.setElement(OrgSymbol.KEY, orgSymbol);
        return this;
    }

    public boolean hasOrgSymbol() {
        return super.hasElement(OrgSymbol.KEY);
    }

    public OrgTitle getOrgTitle() {
        return (OrgTitle) super.getElement(OrgTitle.KEY);
    }

    public Organization setOrgTitle(OrgTitle orgTitle) {
        super.setElement(OrgTitle.KEY, orgTitle);
        return this;
    }

    public boolean hasOrgTitle() {
        return super.hasElement(OrgTitle.KEY);
    }

    public Boolean getPrimary() {
        return (Boolean) super.getAttributeValue(PRIMARY);
    }

    public Organization setPrimary(Boolean bool) {
        super.setAttributeValue(PRIMARY, bool);
        return this;
    }

    public boolean hasPrimary() {
        return super.hasAttribute(PRIMARY);
    }

    public String getRel() {
        return (String) super.getAttributeValue(REL);
    }

    public Organization setRel(String str) {
        super.setAttributeValue(REL, str);
        return this;
    }

    public boolean hasRel() {
        return super.hasAttribute(REL);
    }

    public Where getWhere() {
        return (Where) super.getElement(Where.KEY);
    }

    public Organization setWhere(Where where) {
        super.setElement(Where.KEY, where);
        return this;
    }

    public boolean hasWhere() {
        return super.hasElement(Where.KEY);
    }
}
