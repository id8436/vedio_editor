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
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class UpdateTemplateArg {
    protected final List<PropertyFieldTemplate> addFields;
    protected final String description;
    protected final String name;
    protected final String templateId;

    public UpdateTemplateArg(String str, String str2, String str3, List<PropertyFieldTemplate> list) {
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
        this.name = str2;
        this.description = str3;
        if (list != null) {
            Iterator<PropertyFieldTemplate> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'addFields' is null");
                }
            }
        }
        this.addFields = list;
    }

    public UpdateTemplateArg(String str) {
        this(str, null, null, null);
    }

    public String getTemplateId() {
        return this.templateId;
    }

    public String getName() {
        return this.name;
    }

    public String getDescription() {
        return this.description;
    }

    public List<PropertyFieldTemplate> getAddFields() {
        return this.addFields;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected List<PropertyFieldTemplate> addFields;
        protected String description;
        protected String name;
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
            this.name = null;
            this.description = null;
            this.addFields = null;
        }

        public Builder withName(String str) {
            this.name = str;
            return this;
        }

        public Builder withDescription(String str) {
            this.description = str;
            return this;
        }

        public Builder withAddFields(List<PropertyFieldTemplate> list) {
            if (list != null) {
                Iterator<PropertyFieldTemplate> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next() == null) {
                        throw new IllegalArgumentException("An item in list 'addFields' is null");
                    }
                }
            }
            this.addFields = list;
            return this;
        }

        public UpdateTemplateArg build() {
            return new UpdateTemplateArg(this.templateId, this.name, this.description, this.addFields);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.templateId, this.name, this.description, this.addFields});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UpdateTemplateArg updateTemplateArg = (UpdateTemplateArg) obj;
            if ((this.templateId == updateTemplateArg.templateId || this.templateId.equals(updateTemplateArg.templateId)) && ((this.name == updateTemplateArg.name || (this.name != null && this.name.equals(updateTemplateArg.name))) && (this.description == updateTemplateArg.description || (this.description != null && this.description.equals(updateTemplateArg.description))))) {
                if (this.addFields == updateTemplateArg.addFields) {
                    return true;
                }
                if (this.addFields != null && this.addFields.equals(updateTemplateArg.addFields)) {
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

    public class Serializer extends StructSerializer<UpdateTemplateArg> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UpdateTemplateArg updateTemplateArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("template_id");
            StoneSerializers.string().serialize(updateTemplateArg.templateId, gVar);
            if (updateTemplateArg.name != null) {
                gVar.a("name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(updateTemplateArg.name, gVar);
            }
            if (updateTemplateArg.description != null) {
                gVar.a("description");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(updateTemplateArg.description, gVar);
            }
            if (updateTemplateArg.addFields != null) {
                gVar.a("add_fields");
                StoneSerializers.nullable(StoneSerializers.list(PropertyFieldTemplate.Serializer.INSTANCE)).serialize(updateTemplateArg.addFields, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UpdateTemplateArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list;
            String str;
            String str2;
            String strDeserialize;
            List list2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str3 = null;
                String str4 = null;
                String str5 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("template_id".equals(strD)) {
                        List list3 = list2;
                        str = str3;
                        str2 = str4;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        list = list3;
                    } else if ("name".equals(strD)) {
                        strDeserialize = str5;
                        String str6 = str3;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        list = list2;
                        str = str6;
                    } else if ("description".equals(strD)) {
                        str2 = str4;
                        strDeserialize = str5;
                        List list4 = list2;
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        list = list4;
                    } else if ("add_fields".equals(strD)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(PropertyFieldTemplate.Serializer.INSTANCE)).deserialize(kVar);
                        str = str3;
                        str2 = str4;
                        strDeserialize = str5;
                    } else {
                        skipValue(kVar);
                        list = list2;
                        str = str3;
                        str2 = str4;
                        strDeserialize = str5;
                    }
                    str5 = strDeserialize;
                    str4 = str2;
                    str3 = str;
                    list2 = list;
                }
                if (str5 == null) {
                    throw new j(kVar, "Required field \"template_id\" missing.");
                }
                UpdateTemplateArg updateTemplateArg = new UpdateTemplateArg(str5, str4, str3, list2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return updateTemplateArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
