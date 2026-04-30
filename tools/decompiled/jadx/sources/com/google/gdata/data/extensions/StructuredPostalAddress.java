package com.google.gdata.data.extensions;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = StructuredPostalAddress.XML_NAME, nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class StructuredPostalAddress extends ExtensionPoint {
    private static final String LABEL = "label";
    private static final String MAILCLASS = "mailClass";
    private static final String PRIMARY = "primary";
    private static final String REL = "rel";
    private static final String USAGE = "usage";
    static final String XML_NAME = "structuredPostalAddress";
    private String label = null;
    private String mailClass = null;
    private Boolean primary = null;
    private String rel = null;
    private String usage = null;

    /* JADX INFO: loaded from: classes3.dex */
    public final class MailClass {
        public static final String BOTH = "http://schemas.google.com/g/2005#both";
        public static final String LETTERS = "http://schemas.google.com/g/2005#letters";
        public static final String NEITHER = "http://schemas.google.com/g/2005#neither";
        public static final String PARCELS = "http://schemas.google.com/g/2005#parcels";
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class Rel {
        public static final String HOME = "http://schemas.google.com/g/2005#home";
        public static final String OTHER = "http://schemas.google.com/g/2005#other";
        public static final String WORK = "http://schemas.google.com/g/2005#work";
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class Usage {
        public static final String GENERAL = "http://schemas.google.com/g/2005#general";
        public static final String LOCAL = "http://schemas.google.com/g/2005#local";
    }

    public StructuredPostalAddress() {
    }

    public StructuredPostalAddress(String str, String str2, Boolean bool, String str3, String str4) {
        setLabel(str);
        setMailClass(str2);
        setPrimary(bool);
        setRel(str3);
        setUsage(str4);
        setImmutable(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(StructuredPostalAddress.class)) {
            extensionProfile.declare(StructuredPostalAddress.class, Agent.class);
            extensionProfile.declare(StructuredPostalAddress.class, City.class);
            extensionProfile.declare(StructuredPostalAddress.class, Country.class);
            extensionProfile.declare(StructuredPostalAddress.class, FormattedAddress.class);
            extensionProfile.declare(StructuredPostalAddress.class, HouseName.class);
            extensionProfile.declare(StructuredPostalAddress.class, Neighborhood.class);
            extensionProfile.declare(StructuredPostalAddress.class, PoBox.class);
            extensionProfile.declare(StructuredPostalAddress.class, PostCode.class);
            extensionProfile.declare(StructuredPostalAddress.class, Region.class);
            extensionProfile.declare(StructuredPostalAddress.class, Street.class);
            extensionProfile.declare(StructuredPostalAddress.class, Subregion.class);
        }
    }

    public Agent getAgent() {
        return (Agent) getExtension(Agent.class);
    }

    public void setAgent(Agent agent) {
        if (agent == null) {
            removeExtension(Agent.class);
        } else {
            setExtension(agent);
        }
    }

    public boolean hasAgent() {
        return hasExtension(Agent.class);
    }

    public City getCity() {
        return (City) getExtension(City.class);
    }

    public void setCity(City city) {
        if (city == null) {
            removeExtension(City.class);
        } else {
            setExtension(city);
        }
    }

    public boolean hasCity() {
        return hasExtension(City.class);
    }

    public Country getCountry() {
        return (Country) getExtension(Country.class);
    }

    public void setCountry(Country country) {
        if (country == null) {
            removeExtension(Country.class);
        } else {
            setExtension(country);
        }
    }

    public boolean hasCountry() {
        return hasExtension(Country.class);
    }

    public FormattedAddress getFormattedAddress() {
        return (FormattedAddress) getExtension(FormattedAddress.class);
    }

    public void setFormattedAddress(FormattedAddress formattedAddress) {
        if (formattedAddress == null) {
            removeExtension(FormattedAddress.class);
        } else {
            setExtension(formattedAddress);
        }
    }

    public boolean hasFormattedAddress() {
        return hasExtension(FormattedAddress.class);
    }

    public HouseName getHousename() {
        return (HouseName) getExtension(HouseName.class);
    }

    public void setHousename(HouseName houseName) {
        if (houseName == null) {
            removeExtension(HouseName.class);
        } else {
            setExtension(houseName);
        }
    }

    public boolean hasHousename() {
        return hasExtension(HouseName.class);
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

    public String getMailClass() {
        return this.mailClass;
    }

    public void setMailClass(String str) {
        throwExceptionIfImmutable();
        this.mailClass = str;
    }

    public boolean hasMailClass() {
        return getMailClass() != null;
    }

    public Neighborhood getNeighborhood() {
        return (Neighborhood) getExtension(Neighborhood.class);
    }

    public void setNeighborhood(Neighborhood neighborhood) {
        if (neighborhood == null) {
            removeExtension(Neighborhood.class);
        } else {
            setExtension(neighborhood);
        }
    }

    public boolean hasNeighborhood() {
        return hasExtension(Neighborhood.class);
    }

    public PoBox getPobox() {
        return (PoBox) getExtension(PoBox.class);
    }

    public void setPobox(PoBox poBox) {
        if (poBox == null) {
            removeExtension(PoBox.class);
        } else {
            setExtension(poBox);
        }
    }

    public boolean hasPobox() {
        return hasExtension(PoBox.class);
    }

    public PostCode getPostcode() {
        return (PostCode) getExtension(PostCode.class);
    }

    public void setPostcode(PostCode postCode) {
        if (postCode == null) {
            removeExtension(PostCode.class);
        } else {
            setExtension(postCode);
        }
    }

    public boolean hasPostcode() {
        return hasExtension(PostCode.class);
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

    public Region getRegion() {
        return (Region) getExtension(Region.class);
    }

    public void setRegion(Region region) {
        if (region == null) {
            removeExtension(Region.class);
        } else {
            setExtension(region);
        }
    }

    public boolean hasRegion() {
        return hasExtension(Region.class);
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

    public Street getStreet() {
        return (Street) getExtension(Street.class);
    }

    public void setStreet(Street street) {
        if (street == null) {
            removeExtension(Street.class);
        } else {
            setExtension(street);
        }
    }

    public boolean hasStreet() {
        return hasExtension(Street.class);
    }

    public Subregion getSubregion() {
        return (Subregion) getExtension(Subregion.class);
    }

    public void setSubregion(Subregion subregion) {
        if (subregion == null) {
            removeExtension(Subregion.class);
        } else {
            setExtension(subregion);
        }
    }

    public boolean hasSubregion() {
        return hasExtension(Subregion.class);
    }

    public String getUsage() {
        return this.usage;
    }

    public void setUsage(String str) {
        throwExceptionIfImmutable();
        this.usage = str;
    }

    public boolean hasUsage() {
        return getUsage() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(StructuredPostalAddress.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("label", this.label);
        attributeGenerator.put(MAILCLASS, this.mailClass);
        attributeGenerator.put("primary", (Object) this.primary);
        attributeGenerator.put(REL, this.rel);
        attributeGenerator.put(USAGE, this.usage);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.label = attributeHelper.consume("label", false);
        this.mailClass = attributeHelper.consume(MAILCLASS, false);
        this.primary = Boolean.valueOf(attributeHelper.consumeBoolean("primary", false));
        this.rel = attributeHelper.consume(REL, false);
        this.usage = attributeHelper.consume(USAGE, false);
    }

    public String toString() {
        return "{StructuredPostalAddress label=" + this.label + " mailClass=" + this.mailClass + " primary=" + this.primary + " rel=" + this.rel + " usage=" + this.usage + "}";
    }
}
