package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.fileproperties.PropertyType;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PropertyFieldTemplate {
    protected final String description;
    protected final String name;
    protected final PropertyType type;

    public PropertyFieldTemplate(String str, String str2, PropertyType propertyType) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'description' is null");
        }
        this.description = str2;
        if (propertyType == null) {
            throw new IllegalArgumentException("Required value for 'type' is null");
        }
        this.type = propertyType;
    }

    public String getName() {
        return this.name;
    }

    public String getDescription() {
        return this.description;
    }

    public PropertyType getType() {
        return this.type;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, this.description, this.type});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PropertyFieldTemplate propertyFieldTemplate = (PropertyFieldTemplate) obj;
            return (this.name == propertyFieldTemplate.name || this.name.equals(propertyFieldTemplate.name)) && (this.description == propertyFieldTemplate.description || this.description.equals(propertyFieldTemplate.description)) && (this.type == propertyFieldTemplate.type || this.type.equals(propertyFieldTemplate.type));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PropertyFieldTemplate> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PropertyFieldTemplate propertyFieldTemplate, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("name");
            StoneSerializers.string().serialize(propertyFieldTemplate.name, gVar);
            gVar.a("description");
            StoneSerializers.string().serialize(propertyFieldTemplate.description, gVar);
            gVar.a("type");
            PropertyType.Serializer.INSTANCE.serialize(propertyFieldTemplate.type, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PropertyFieldTemplate deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PropertyType propertyTypeDeserialize;
            String strDeserialize;
            String strDeserialize2;
            PropertyType propertyType = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("name".equals(strD)) {
                        PropertyType propertyType2 = propertyType;
                        strDeserialize = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        propertyTypeDeserialize = propertyType2;
                    } else if ("description".equals(strD)) {
                        strDeserialize2 = str2;
                        propertyTypeDeserialize = propertyType;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("type".equals(strD)) {
                        propertyTypeDeserialize = PropertyType.Serializer.INSTANCE.deserialize(kVar);
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        propertyTypeDeserialize = propertyType;
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    str = strDeserialize;
                    propertyType = propertyTypeDeserialize;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"description\" missing.");
                }
                if (propertyType == null) {
                    throw new j(kVar, "Required field \"type\" missing.");
                }
                PropertyFieldTemplate propertyFieldTemplate = new PropertyFieldTemplate(str2, str, propertyType);
                if (!z) {
                    expectEndObject(kVar);
                }
                return propertyFieldTemplate;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
