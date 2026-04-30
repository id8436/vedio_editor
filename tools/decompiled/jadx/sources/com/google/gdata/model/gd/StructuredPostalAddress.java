package com.google.gdata.model.gd;

import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class StructuredPostalAddress extends Element {
    public static final ElementKey<Void, StructuredPostalAddress> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "structuredPostalAddress"), Void.class, StructuredPostalAddress.class);
    public static final AttributeKey<String> LABEL = AttributeKey.of(new QName(null, "label"), String.class);
    public static final AttributeKey<String> MAIL_CLASS = AttributeKey.of(new QName(null, "mailClass"), String.class);
    public static final AttributeKey<Boolean> PRIMARY = AttributeKey.of(new QName(null, AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary), Boolean.class);
    public static final AttributeKey<String> REL = AttributeKey.of(new QName(null, "rel"), String.class);
    public static final AttributeKey<String> USAGE = AttributeKey.of(new QName(null, "usage"), String.class);

    public final class MailClass {
        private static final String[] ALL_VALUES = {"http://schemas.google.com/g/2005#both", "http://schemas.google.com/g/2005#letters", "http://schemas.google.com/g/2005#neither", "http://schemas.google.com/g/2005#parcels"};
        public static final String BOTH = "http://schemas.google.com/g/2005#both";
        public static final String LETTERS = "http://schemas.google.com/g/2005#letters";
        public static final String NEITHER = "http://schemas.google.com/g/2005#neither";
        public static final String PARCELS = "http://schemas.google.com/g/2005#parcels";

        public static String[] values() {
            return ALL_VALUES;
        }

        private MailClass() {
        }
    }

    public final class Rel {
        private static final String[] ALL_VALUES = {"http://schemas.google.com/g/2005#home", "http://schemas.google.com/g/2005#other", "http://schemas.google.com/g/2005#work"};
        public static final String HOME = "http://schemas.google.com/g/2005#home";
        public static final String OTHER = "http://schemas.google.com/g/2005#other";
        public static final String WORK = "http://schemas.google.com/g/2005#work";

        public static String[] values() {
            return ALL_VALUES;
        }

        private Rel() {
        }
    }

    public final class Usage {
        private static final String[] ALL_VALUES = {"http://schemas.google.com/g/2005#general", "http://schemas.google.com/g/2005#local"};
        public static final String GENERAL = "http://schemas.google.com/g/2005#general";
        public static final String LOCAL = "http://schemas.google.com/g/2005#local";

        public static String[] values() {
            return ALL_VALUES;
        }

        private Usage() {
        }
    }

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(LABEL);
            elementCreatorBuild.addAttribute(MAIL_CLASS);
            elementCreatorBuild.addAttribute(PRIMARY);
            elementCreatorBuild.addAttribute(REL);
            elementCreatorBuild.addAttribute(USAGE);
            elementCreatorBuild.addElement(Agent.KEY);
            elementCreatorBuild.addElement(City.KEY);
            elementCreatorBuild.addElement(Country.KEY);
            elementCreatorBuild.addElement(FormattedAddress.KEY);
            elementCreatorBuild.addElement(HouseName.KEY);
            elementCreatorBuild.addElement(Neighborhood.KEY);
            elementCreatorBuild.addElement(PoBox.KEY);
            elementCreatorBuild.addElement(PostCode.KEY);
            elementCreatorBuild.addElement(Region.KEY);
            elementCreatorBuild.addElement(Street.KEY);
            elementCreatorBuild.addElement(Subregion.KEY);
        }
    }

    public StructuredPostalAddress() {
        super(KEY);
    }

    protected StructuredPostalAddress(ElementKey<?, ? extends StructuredPostalAddress> elementKey) {
        super(elementKey);
    }

    protected StructuredPostalAddress(ElementKey<?, ? extends StructuredPostalAddress> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public StructuredPostalAddress lock() {
        return (StructuredPostalAddress) super.lock();
    }

    public Agent getAgent() {
        return (Agent) super.getElement(Agent.KEY);
    }

    public StructuredPostalAddress setAgent(Agent agent) {
        super.setElement(Agent.KEY, agent);
        return this;
    }

    public boolean hasAgent() {
        return super.hasElement(Agent.KEY);
    }

    public City getCity() {
        return (City) super.getElement(City.KEY);
    }

    public StructuredPostalAddress setCity(City city) {
        super.setElement(City.KEY, city);
        return this;
    }

    public boolean hasCity() {
        return super.hasElement(City.KEY);
    }

    public Country getCountry() {
        return (Country) super.getElement(Country.KEY);
    }

    public StructuredPostalAddress setCountry(Country country) {
        super.setElement(Country.KEY, country);
        return this;
    }

    public boolean hasCountry() {
        return super.hasElement(Country.KEY);
    }

    public FormattedAddress getFormattedAddress() {
        return (FormattedAddress) super.getElement(FormattedAddress.KEY);
    }

    public StructuredPostalAddress setFormattedAddress(FormattedAddress formattedAddress) {
        super.setElement(FormattedAddress.KEY, formattedAddress);
        return this;
    }

    public boolean hasFormattedAddress() {
        return super.hasElement(FormattedAddress.KEY);
    }

    public HouseName getHousename() {
        return (HouseName) super.getElement(HouseName.KEY);
    }

    public StructuredPostalAddress setHousename(HouseName houseName) {
        super.setElement(HouseName.KEY, houseName);
        return this;
    }

    public boolean hasHousename() {
        return super.hasElement(HouseName.KEY);
    }

    public String getLabel() {
        return (String) super.getAttributeValue(LABEL);
    }

    public StructuredPostalAddress setLabel(String str) {
        super.setAttributeValue(LABEL, str);
        return this;
    }

    public boolean hasLabel() {
        return super.hasAttribute(LABEL);
    }

    public String getMailClass() {
        return (String) super.getAttributeValue(MAIL_CLASS);
    }

    public StructuredPostalAddress setMailClass(String str) {
        super.setAttributeValue(MAIL_CLASS, str);
        return this;
    }

    public boolean hasMailClass() {
        return super.hasAttribute(MAIL_CLASS);
    }

    public Neighborhood getNeighborhood() {
        return (Neighborhood) super.getElement(Neighborhood.KEY);
    }

    public StructuredPostalAddress setNeighborhood(Neighborhood neighborhood) {
        super.setElement(Neighborhood.KEY, neighborhood);
        return this;
    }

    public boolean hasNeighborhood() {
        return super.hasElement(Neighborhood.KEY);
    }

    public PoBox getPobox() {
        return (PoBox) super.getElement(PoBox.KEY);
    }

    public StructuredPostalAddress setPobox(PoBox poBox) {
        super.setElement(PoBox.KEY, poBox);
        return this;
    }

    public boolean hasPobox() {
        return super.hasElement(PoBox.KEY);
    }

    public PostCode getPostcode() {
        return (PostCode) super.getElement(PostCode.KEY);
    }

    public StructuredPostalAddress setPostcode(PostCode postCode) {
        super.setElement(PostCode.KEY, postCode);
        return this;
    }

    public boolean hasPostcode() {
        return super.hasElement(PostCode.KEY);
    }

    public Boolean getPrimary() {
        return (Boolean) super.getAttributeValue(PRIMARY);
    }

    public StructuredPostalAddress setPrimary(Boolean bool) {
        super.setAttributeValue(PRIMARY, bool);
        return this;
    }

    public boolean hasPrimary() {
        return super.hasAttribute(PRIMARY);
    }

    public Region getRegion() {
        return (Region) super.getElement(Region.KEY);
    }

    public StructuredPostalAddress setRegion(Region region) {
        super.setElement(Region.KEY, region);
        return this;
    }

    public boolean hasRegion() {
        return super.hasElement(Region.KEY);
    }

    public String getRel() {
        return (String) super.getAttributeValue(REL);
    }

    public StructuredPostalAddress setRel(String str) {
        super.setAttributeValue(REL, str);
        return this;
    }

    public boolean hasRel() {
        return super.hasAttribute(REL);
    }

    public Street getStreet() {
        return (Street) super.getElement(Street.KEY);
    }

    public StructuredPostalAddress setStreet(Street street) {
        super.setElement(Street.KEY, street);
        return this;
    }

    public boolean hasStreet() {
        return super.hasElement(Street.KEY);
    }

    public Subregion getSubregion() {
        return (Subregion) super.getElement(Subregion.KEY);
    }

    public StructuredPostalAddress setSubregion(Subregion subregion) {
        super.setElement(Subregion.KEY, subregion);
        return this;
    }

    public boolean hasSubregion() {
        return super.hasElement(Subregion.KEY);
    }

    public String getUsage() {
        return (String) super.getAttributeValue(USAGE);
    }

    public StructuredPostalAddress setUsage(String str) {
        super.setAttributeValue(USAGE, str);
        return this;
    }

    public boolean hasUsage() {
        return super.hasAttribute(USAGE);
    }
}
