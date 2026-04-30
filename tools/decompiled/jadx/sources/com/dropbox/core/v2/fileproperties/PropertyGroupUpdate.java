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
public class PropertyGroupUpdate {
    protected final List<PropertyField> addOrUpdateFields;
    protected final List<String> removeFields;
    protected final String templateId;

    public PropertyGroupUpdate(String str, List<PropertyField> list, List<String> list2) {
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
        if (list != null) {
            Iterator<PropertyField> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'addOrUpdateFields' is null");
                }
            }
        }
        this.addOrUpdateFields = list;
        if (list2 != null) {
            Iterator<String> it2 = list2.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'removeFields' is null");
                }
            }
        }
        this.removeFields = list2;
    }

    public PropertyGroupUpdate(String str) {
        this(str, null, null);
    }

    public String getTemplateId() {
        return this.templateId;
    }

    public List<PropertyField> getAddOrUpdateFields() {
        return this.addOrUpdateFields;
    }

    public List<String> getRemoveFields() {
        return this.removeFields;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected List<PropertyField> addOrUpdateFields;
        protected List<String> removeFields;
        protected final String templateId;

        protected Builder(String str) {
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
            this.addOrUpdateFields = null;
            this.removeFields = null;
        }

        public Builder withAddOrUpdateFields(List<PropertyField> list) {
            if (list != null) {
                Iterator<PropertyField> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'addOrUpdateFields' is null");
                    }
                }
            }
            this.addOrUpdateFields = list;
            return this;
        }

        public Builder withRemoveFields(List<String> list) {
            if (list != null) {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'removeFields' is null");
                    }
                }
            }
            this.removeFields = list;
            return this;
        }

        public PropertyGroupUpdate build() {
            return new PropertyGroupUpdate(this.templateId, this.addOrUpdateFields, this.removeFields);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.templateId, this.addOrUpdateFields, this.removeFields});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PropertyGroupUpdate propertyGroupUpdate = (PropertyGroupUpdate) obj;
            if ((this.templateId == propertyGroupUpdate.templateId || this.templateId.equals(propertyGroupUpdate.templateId)) && (this.addOrUpdateFields == propertyGroupUpdate.addOrUpdateFields || (this.addOrUpdateFields != null && this.addOrUpdateFields.equals(propertyGroupUpdate.addOrUpdateFields)))) {
                if (this.removeFields == propertyGroupUpdate.removeFields) {
                    return true;
                }
                if (this.removeFields != null && this.removeFields.equals(propertyGroupUpdate.removeFields)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PropertyGroupUpdate> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PropertyGroupUpdate propertyGroupUpdate, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("template_id");
            StoneSerializers.string().serialize(propertyGroupUpdate.templateId, gVar);
            if (propertyGroupUpdate.addOrUpdateFields != null) {
                gVar.a("add_or_update_fields");
                StoneSerializers.nullable(StoneSerializers.list(PropertyField.Serializer.INSTANCE)).serialize(propertyGroupUpdate.addOrUpdateFields, gVar);
            }
            if (propertyGroupUpdate.removeFields != null) {
                gVar.a("remove_fields");
                StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).serialize(propertyGroupUpdate.removeFields, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PropertyGroupUpdate deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list;
            List list2;
            String strDeserialize;
            List list3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                List list4 = null;
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("template_id".equals(strD)) {
                        List list5 = list3;
                        list2 = list4;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        list = list5;
                    } else if ("add_or_update_fields".equals(strD)) {
                        strDeserialize = str;
                        list = list3;
                        list2 = (List) StoneSerializers.nullable(StoneSerializers.list(PropertyField.Serializer.INSTANCE)).deserialize(kVar);
                    } else if ("remove_fields".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(kVar);
                        list2 = list4;
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        list = list3;
                        list2 = list4;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    list4 = list2;
                    list3 = list;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"template_id\" missing.");
                }
                PropertyGroupUpdate propertyGroupUpdate = new PropertyGroupUpdate(str, list4, list3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return propertyGroupUpdate;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
