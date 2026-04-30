package com.google.gdata.data.acl;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(isRequired = true, localName = "scope", nsAlias = AclNamespace.gAclAlias, nsUri = AclNamespace.gAcl)
public class AclScope extends AbstractExtension {
    private static final String NAME = "name";
    static final String SCOPE = "scope";
    private static final String TYPE = "type";
    private static final AttributeHelper.LowerCaseEnumToAttributeValue<Type> TYPE_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.LowerCaseEnumToAttributeValue<>();
    private static final String VALUE = "value";
    private Type type = null;
    private String value = null;
    private String name = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Type {
        INVITE,
        USER,
        DOMAIN,
        GROUP,
        DEFAULT
    }

    public AclScope() {
    }

    public AclScope(Type type, String str) {
        setType(type);
        setValue(str);
        setImmutable(true);
    }

    public AclScope(Type type, String str, String str2) {
        setType(type);
        setValue(str);
        setName(str2);
        setImmutable(true);
    }

    public Type getType() {
        return this.type;
    }

    public void setType(Type type) {
        throwExceptionIfImmutable();
        this.type = type;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        throwExceptionIfImmutable();
        this.value = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        throwExceptionIfImmutable();
        this.name = str;
    }

    public String toExternalForm() {
        return this.type == Type.DEFAULT ? getTypeIdentifier(this.type) : getTypeIdentifier(this.type) + ":" + this.value;
    }

    public static AclScope fromExternalForm(String str) {
        Type type;
        if (str == null) {
            return null;
        }
        if (str.equals(getTypeIdentifier(Type.DEFAULT))) {
            return new AclScope(Type.DEFAULT, null);
        }
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length != 2 || (type = getType(strArrSplit[0])) == null || type == Type.DEFAULT) {
            return null;
        }
        return new AclScope(type, strArrSplit[1]);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.type == null) {
            throwExceptionForMissingAttribute("type");
        }
        if (this.type == Type.DEFAULT) {
            if (this.value != null) {
                throw new IllegalStateException("attribute value should not be set for default type");
            }
        } else if (this.value == null) {
            throwExceptionForMissingAttribute(VALUE);
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    public void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put("type", this.type, TYPE_ENUM_TO_ATTRIBUTE_VALUE);
        attributeGenerator.put(VALUE, this.value);
        attributeGenerator.put("name", this.name);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.type = (Type) attributeHelper.consumeEnum("type", true, Type.class, null, TYPE_ENUM_TO_ATTRIBUTE_VALUE);
        this.value = attributeHelper.consume(VALUE, false);
        this.name = attributeHelper.consume("name", false);
    }

    private static String getTypeIdentifier(Type type) {
        return TYPE_ENUM_TO_ATTRIBUTE_VALUE.getAttributeValue(type);
    }

    private static Type getType(String str) {
        for (Type type : Type.values()) {
            if (TYPE_ENUM_TO_ATTRIBUTE_VALUE.getAttributeValue(type).equals(str)) {
                return type;
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        AclScope aclScope = (AclScope) obj;
        return eq(this.value, aclScope.value) && eq(this.type, aclScope.type) && eq(this.name, aclScope.name);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.value != null) {
            iHashCode = (iHashCode * 37) + this.value.hashCode();
        }
        if (this.type != null) {
            iHashCode = (iHashCode * 37) + this.type.hashCode();
        }
        if (this.name != null) {
            return (iHashCode * 37) + this.name.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "[AclScope type=" + this.type + " value=" + this.value + " name=" + this.name + "]";
    }
}
