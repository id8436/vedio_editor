package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.fileproperties.PropertyFieldTemplate;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AddTemplateArg extends PropertyGroupTemplate {
    public AddTemplateArg(String str, String str2, List<PropertyFieldTemplate> list) {
        super(str, str2, list);
    }

    @Override // com.dropbox.core.v2.fileproperties.PropertyGroupTemplate
    public String getName() {
        return this.name;
    }

    @Override // com.dropbox.core.v2.fileproperties.PropertyGroupTemplate
    public String getDescription() {
        return this.description;
    }

    @Override // com.dropbox.core.v2.fileproperties.PropertyGroupTemplate
    public List<PropertyFieldTemplate> getFields() {
        return this.fields;
    }

    @Override // com.dropbox.core.v2.fileproperties.PropertyGroupTemplate
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.v2.fileproperties.PropertyGroupTemplate
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            AddTemplateArg addTemplateArg = (AddTemplateArg) obj;
            return (this.name == addTemplateArg.name || this.name.equals(addTemplateArg.name)) && (this.description == addTemplateArg.description || this.description.equals(addTemplateArg.description)) && (this.fields == addTemplateArg.fields || this.fields.equals(addTemplateArg.fields));
        }
        return false;
    }

    @Override // com.dropbox.core.v2.fileproperties.PropertyGroupTemplate
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.fileproperties.PropertyGroupTemplate
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    public class Serializer extends StructSerializer<AddTemplateArg> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AddTemplateArg addTemplateArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("name");
            StoneSerializers.string().serialize(addTemplateArg.name, gVar);
            gVar.a("description");
            StoneSerializers.string().serialize(addTemplateArg.description, gVar);
            gVar.a("fields");
            StoneSerializers.list(PropertyFieldTemplate.Serializer.INSTANCE).serialize(addTemplateArg.fields, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AddTemplateArg deserialize(k kVar, boolean z) throws IOException {
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
                AddTemplateArg addTemplateArg = new AddTemplateArg(str2, str, list2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return addTemplateArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
