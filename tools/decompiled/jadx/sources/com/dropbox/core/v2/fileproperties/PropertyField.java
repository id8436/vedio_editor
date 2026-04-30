package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PropertyField {
    protected final String name;
    protected final String value;

    public PropertyField(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'value' is null");
        }
        this.value = str2;
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, this.value});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PropertyField propertyField = (PropertyField) obj;
            return (this.name == propertyField.name || this.name.equals(propertyField.name)) && (this.value == propertyField.value || this.value.equals(propertyField.value));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PropertyField> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PropertyField propertyField, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("name");
            StoneSerializers.string().serialize(propertyField.name, gVar);
            gVar.a("value");
            StoneSerializers.string().serialize(propertyField.value, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PropertyField deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize;
            String strDeserialize2;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("name".equals(strD)) {
                        String str3 = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str3;
                    } else if ("value".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    str = strDeserialize;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"value\" missing.");
                }
                PropertyField propertyField = new PropertyField(str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return propertyField;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
