package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.fileproperties.LookUpPropertiesError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class PropertiesSearchError {
    public static final PropertiesSearchError OTHER = new PropertiesSearchError().withTag(Tag.OTHER);
    private Tag _tag;
    private LookUpPropertiesError propertyGroupLookupValue;

    public enum Tag {
        PROPERTY_GROUP_LOOKUP,
        OTHER
    }

    private PropertiesSearchError() {
    }

    private PropertiesSearchError withTag(Tag tag) {
        PropertiesSearchError propertiesSearchError = new PropertiesSearchError();
        propertiesSearchError._tag = tag;
        return propertiesSearchError;
    }

    private PropertiesSearchError withTagAndPropertyGroupLookup(Tag tag, LookUpPropertiesError lookUpPropertiesError) {
        PropertiesSearchError propertiesSearchError = new PropertiesSearchError();
        propertiesSearchError._tag = tag;
        propertiesSearchError.propertyGroupLookupValue = lookUpPropertiesError;
        return propertiesSearchError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPropertyGroupLookup() {
        return this._tag == Tag.PROPERTY_GROUP_LOOKUP;
    }

    public static PropertiesSearchError propertyGroupLookup(LookUpPropertiesError lookUpPropertiesError) {
        if (lookUpPropertiesError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new PropertiesSearchError().withTagAndPropertyGroupLookup(Tag.PROPERTY_GROUP_LOOKUP, lookUpPropertiesError);
    }

    public LookUpPropertiesError getPropertyGroupLookupValue() {
        if (this._tag != Tag.PROPERTY_GROUP_LOOKUP) {
            throw new IllegalStateException("Invalid tag: required Tag.PROPERTY_GROUP_LOOKUP, but was Tag." + this._tag.name());
        }
        return this.propertyGroupLookupValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.propertyGroupLookupValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof PropertiesSearchError)) {
            return false;
        }
        PropertiesSearchError propertiesSearchError = (PropertiesSearchError) obj;
        if (this._tag != propertiesSearchError._tag) {
            return false;
        }
        switch (this._tag) {
            case PROPERTY_GROUP_LOOKUP:
                return this.propertyGroupLookupValue == propertiesSearchError.propertyGroupLookupValue || this.propertyGroupLookupValue.equals(propertiesSearchError.propertyGroupLookupValue);
            case OTHER:
                return true;
            default:
                return false;
        }
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<PropertiesSearchError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PropertiesSearchError propertiesSearchError, g gVar) throws IOException {
            switch (propertiesSearchError.tag()) {
                case PROPERTY_GROUP_LOOKUP:
                    gVar.e();
                    writeTag("property_group_lookup", gVar);
                    gVar.a("property_group_lookup");
                    LookUpPropertiesError.Serializer.INSTANCE.serialize(propertiesSearchError.propertyGroupLookupValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PropertiesSearchError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PropertiesSearchError propertiesSearchErrorPropertyGroupLookup;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("property_group_lookup".equals(tag)) {
                expectField("property_group_lookup", kVar);
                propertiesSearchErrorPropertyGroupLookup = PropertiesSearchError.propertyGroupLookup(LookUpPropertiesError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                propertiesSearchErrorPropertyGroupLookup = PropertiesSearchError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return propertiesSearchErrorPropertyGroupLookup;
        }
    }
}
