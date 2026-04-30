package com.google.gdata.data.analytics;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Segment.XML_NAME, nsAlias = AnalyticsNamespace.DXP_ALIAS, nsUri = AnalyticsNamespace.DXP)
public class Segment extends ExtensionPoint {
    private static final String ID = "id";
    private static final String NAME = "name";
    static final String XML_NAME = "segment";
    private String id = null;
    private String name = null;

    public Segment() {
    }

    public Segment(String str, String str2) {
        setId(str);
        setName(str2);
        setImmutable(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(Segment.class)) {
            extensionProfile.declare(Segment.class, Definition.class);
            extensionProfile.declare(Segment.class, Property.getDefaultDescription(false, true));
        }
    }

    public Definition getDefinition() {
        return (Definition) getExtension(Definition.class);
    }

    public void setDefinition(Definition definition) {
        if (definition == null) {
            removeExtension(Definition.class);
        } else {
            setExtension(definition);
        }
    }

    public boolean hasDefinition() {
        return hasExtension(Definition.class);
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        throwExceptionIfImmutable();
        this.id = str;
    }

    public boolean hasId() {
        return getId() != null;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        throwExceptionIfImmutable();
        this.name = str;
    }

    public boolean hasName() {
        return getName() != null;
    }

    public List<Property> getProperties() {
        return getRepeatingExtension(Property.class);
    }

    public void addProperty(Property property) {
        getProperties().add(property);
    }

    public boolean hasProperties() {
        return hasRepeatingExtension(Property.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Segment.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("id", this.id);
        attributeGenerator.put("name", this.name);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.id = attributeHelper.consume("id", false);
        this.name = attributeHelper.consume("name", false);
    }

    public String toString() {
        return "{Segment id=" + this.id + " name=" + this.name + "}";
    }

    public String getProperty(String str) {
        if (hasProperties()) {
            for (Property property : getProperties()) {
                if (property.hasName() && property.getName().equalsIgnoreCase(str)) {
                    return property.getValue();
                }
            }
        }
        return null;
    }
}
