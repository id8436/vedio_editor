package com.google.gdata.data.analytics;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Goal.XML_NAME, nsAlias = AnalyticsNamespace.GA_ALIAS, nsUri = AnalyticsNamespace.GA)
public class Goal extends ExtensionPoint {
    private static final String ACTIVE = "active";
    private static final String NAME = "name";
    private static final String NUMBER = "number";
    private static final String VALUE = "value";
    static final String XML_NAME = "goal";
    private Boolean active = null;
    private String name = null;
    private Integer number = null;
    private Double value = null;

    public Goal() {
    }

    public Goal(Boolean bool, String str, Integer num, Double d2) {
        setActive(bool);
        setName(str);
        setNumber(num);
        setValue(d2);
        setImmutable(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(Goal.class)) {
            extensionProfile.declare(Goal.class, Destination.class);
            new Destination().declareExtensions(extensionProfile);
            extensionProfile.declare(Goal.class, Engagement.class);
        }
    }

    public Boolean getActive() {
        return this.active;
    }

    public void setActive(Boolean bool) {
        throwExceptionIfImmutable();
        this.active = bool;
    }

    public boolean hasActive() {
        return getActive() != null;
    }

    public Destination getDestination() {
        return (Destination) getExtension(Destination.class);
    }

    public void setDestination(Destination destination) {
        if (destination == null) {
            removeExtension(Destination.class);
        } else {
            setExtension(destination);
        }
    }

    public boolean hasDestination() {
        return hasExtension(Destination.class);
    }

    public Engagement getEngagement() {
        return (Engagement) getExtension(Engagement.class);
    }

    public void setEngagement(Engagement engagement) {
        if (engagement == null) {
            removeExtension(Engagement.class);
        } else {
            setExtension(engagement);
        }
    }

    public boolean hasEngagement() {
        return hasExtension(Engagement.class);
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

    public Integer getNumber() {
        return this.number;
    }

    public void setNumber(Integer num) {
        throwExceptionIfImmutable();
        this.number = num;
    }

    public boolean hasNumber() {
        return getNumber() != null;
    }

    public Double getValue() {
        return this.value;
    }

    public void setValue(Double d2) {
        throwExceptionIfImmutable();
        this.value = d2;
    }

    public boolean hasValue() {
        return getValue() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.active == null) {
            throwExceptionForMissingAttribute(ACTIVE);
        }
        if (this.name == null) {
            throwExceptionForMissingAttribute("name");
        }
        if (this.number == null) {
            throwExceptionForMissingAttribute(NUMBER);
        }
        if (this.value == null) {
            throwExceptionForMissingAttribute(VALUE);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Goal.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(ACTIVE, (Object) this.active);
        attributeGenerator.put("name", this.name);
        attributeGenerator.put(NUMBER, (Object) this.number);
        attributeGenerator.put(VALUE, (Object) this.value);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.active = Boolean.valueOf(attributeHelper.consumeBoolean(ACTIVE, true));
        this.name = attributeHelper.consume("name", true);
        this.number = Integer.valueOf(attributeHelper.consumeInteger(NUMBER, true));
        this.value = Double.valueOf(attributeHelper.consumeDouble(VALUE, true));
    }

    public String toString() {
        return "{Goal active=" + this.active + " name=" + this.name + " number=" + this.number + " value=" + this.value + "}";
    }
}
