package com.google.gdata.data.analytics;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = CustomVariable.XML_NAME, nsAlias = AnalyticsNamespace.GA_ALIAS, nsUri = AnalyticsNamespace.GA)
public class CustomVariable extends ExtensionPoint {
    private static final String INDEX = "index";
    private static final String NAME = "name";
    private static final String SCOPE = "scope";
    static final String XML_NAME = "customVariable";
    private Integer index = null;
    private String name = null;
    private String scope = null;

    /* JADX INFO: loaded from: classes3.dex */
    public final class Scope {
        public static final String HIT = "hit";
        public static final String VISIT = "visit";
        public static final String VISITOR = "visitor";
    }

    public CustomVariable() {
    }

    public CustomVariable(Integer num, String str, String str2) {
        setIndex(num);
        setName(str);
        setScope(str2);
        setImmutable(true);
    }

    public Integer getIndex() {
        return this.index;
    }

    public void setIndex(Integer num) {
        throwExceptionIfImmutable();
        this.index = num;
    }

    public boolean hasIndex() {
        return getIndex() != null;
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

    public String getScope() {
        return this.scope;
    }

    public void setScope(String str) {
        throwExceptionIfImmutable();
        this.scope = str;
    }

    public boolean hasScope() {
        return getScope() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.index == null) {
            throwExceptionForMissingAttribute(INDEX);
        }
        if (this.name == null) {
            throwExceptionForMissingAttribute("name");
        }
        if (this.scope == null) {
            throwExceptionForMissingAttribute("scope");
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(CustomVariable.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(INDEX, (Object) this.index);
        attributeGenerator.put("name", this.name);
        attributeGenerator.put("scope", this.scope);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.index = Integer.valueOf(attributeHelper.consumeInteger(INDEX, true));
        this.name = attributeHelper.consume("name", true);
        this.scope = attributeHelper.consume("scope", true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        CustomVariable customVariable = (CustomVariable) obj;
        return eq(this.index, customVariable.index) && eq(this.name, customVariable.name) && eq(this.scope, customVariable.scope);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.index != null) {
            iHashCode = (iHashCode * 37) + this.index.hashCode();
        }
        if (this.name != null) {
            iHashCode = (iHashCode * 37) + this.name.hashCode();
        }
        if (this.scope != null) {
            return (iHashCode * 37) + this.scope.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{CustomVariable index=" + this.index + " name=" + this.name + " scope=" + this.scope + "}";
    }
}
