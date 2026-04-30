package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.fileproperties.PropertyFieldTemplate;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PropertyGroupTemplate {
    protected final String description;
    protected final List<PropertyFieldTemplate> fields;
    protected final String name;

    public PropertyGroupTemplate(String str, String str2, List<PropertyFieldTemplate> list) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'description' is null");
        }
        this.description = str2;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'fields' is null");
        }
        Iterator<PropertyFieldTemplate> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'fields' is null");
            }
        }
        this.fields = list;
    }

    public String getName() {
        return this.name;
    }

    public String getDescription() {
        return this.description;
    }

    public List<PropertyFieldTemplate> getFields() {
        return this.fields;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, this.description, this.fields});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PropertyGroupTemplate propertyGroupTemplate = (PropertyGroupTemplate) obj;
            return (this.name == propertyGroupTemplate.name || this.name.equals(propertyGroupTemplate.name)) && (this.description == propertyGroupTemplate.description || this.description.equals(propertyGroupTemplate.description)) && (this.fields == propertyGroupTemplate.fields || this.fields.equals(propertyGroupTemplate.fields));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PropertyGroupTemplate> {
        public static final Serializer INSTANCE = new Serializer();

        private Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PropertyGroupTemplate propertyGroupTemplate, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("name");
            StoneSerializers.string().serialize(propertyGroupTemplate.name, gVar);
            gVar.a("description");
            StoneSerializers.string().serialize(propertyGroupTemplate.description, gVar);
            gVar.a("fields");
            StoneSerializers.list(PropertyFieldTemplate.Serializer.INSTANCE).serialize(propertyGroupTemplate.fields, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PropertyGroupTemplate deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list;
            String strDeserialize;
            String strDeserialize2;
            List list2 = null;
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
                        List list3 = list2;
                        strDeserialize = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        list = list3;
                    } else if ("description".equals(strD)) {
                        strDeserialize2 = str2;
                        list = list2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("fields".equals(strD)) {
                        list = (List) StoneSerializers.list(PropertyFieldTemplate.Serializer.INSTANCE).deserialize(kVar);
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        list = list2;
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    str = strDeserialize;
                    list2 = list;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"description\" missing.");
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"fields\" missing.");
                }
                PropertyGroupTemplate propertyGroupTemplate = new PropertyGroupTemplate(str2, str, list2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return propertyGroupTemplate;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
