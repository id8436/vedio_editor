package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.fileproperties.PropertyField;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class PropertyGroup {
    protected final List<PropertyField> fields;
    protected final String templateId;

    public PropertyGroup(String str, List<PropertyField> list) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'templateId' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'templateId' is shorter than 1");
        }
        if (!Pattern.matches("(/|ptid:).*", str)) {
            throw new IllegalArgumentException("String 'templateId' does not match pattern");
        }
        this.templateId = str;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'fields' is null");
        }
        Iterator<PropertyField> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'fields' is null");
            }
        }
        this.fields = list;
    }

    public String getTemplateId() {
        return this.templateId;
    }

    public List<PropertyField> getFields() {
        return this.fields;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.templateId, this.fields});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PropertyGroup propertyGroup = (PropertyGroup) obj;
            return (this.templateId == propertyGroup.templateId || this.templateId.equals(propertyGroup.templateId)) && (this.fields == propertyGroup.fields || this.fields.equals(propertyGroup.fields));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    public class Serializer extends StructSerializer<PropertyGroup> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PropertyGroup propertyGroup, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("template_id");
            StoneSerializers.string().serialize(propertyGroup.templateId, gVar);
            gVar.a("fields");
            StoneSerializers.list(PropertyField.Serializer.INSTANCE).serialize(propertyGroup.fields, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PropertyGroup deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list;
            String strDeserialize;
            List list2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("template_id".equals(strD)) {
                        List list3 = list2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        list = list3;
                    } else if ("fields".equals(strD)) {
                        list = (List) StoneSerializers.list(PropertyField.Serializer.INSTANCE).deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        list = list2;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    list2 = list;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"template_id\" missing.");
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"fields\" missing.");
                }
                PropertyGroup propertyGroup = new PropertyGroup(str, list2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return propertyGroup;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
