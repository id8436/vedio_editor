package com.google.gdata.data.analytics;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Step.XML_NAME, nsAlias = AnalyticsNamespace.GA_ALIAS, nsUri = AnalyticsNamespace.GA)
public class Step extends ExtensionPoint {
    private static final String NAME = "name";
    private static final String NUMBER = "number";
    private static final String PATH = "path";
    static final String XML_NAME = "step";
    private String name = null;
    private Integer number = null;
    private String path = null;

    public Step() {
    }

    public Step(String str, Integer num, String str2) {
        setName(str);
        setNumber(num);
        setPath(str2);
        setImmutable(true);
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

    public String getPath() {
        return this.path;
    }

    public void setPath(String str) {
        throwExceptionIfImmutable();
        this.path = str;
    }

    public boolean hasPath() {
        return getPath() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.name == null) {
            throwExceptionForMissingAttribute("name");
        }
        if (this.number == null) {
            throwExceptionForMissingAttribute(NUMBER);
        }
        if (this.path == null) {
            throwExceptionForMissingAttribute("path");
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Step.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("name", this.name);
        attributeGenerator.put(NUMBER, (Object) this.number);
        attributeGenerator.put("path", this.path);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.name = attributeHelper.consume("name", true);
        this.number = Integer.valueOf(attributeHelper.consumeInteger(NUMBER, true));
        this.path = attributeHelper.consume("path", true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Step step = (Step) obj;
        return eq(this.name, step.name) && eq(this.number, step.number) && eq(this.path, step.path);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.name != null) {
            iHashCode = (iHashCode * 37) + this.name.hashCode();
        }
        if (this.number != null) {
            iHashCode = (iHashCode * 37) + this.number.hashCode();
        }
        if (this.path != null) {
            return (iHashCode * 37) + this.path.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Step name=" + this.name + " number=" + this.number + " path=" + this.path + "}";
    }
}
