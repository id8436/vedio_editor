package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class RemovePropertiesArg {
    protected final String path;
    protected final List<String> propertyTemplateIds;

    public RemovePropertiesArg(String str, List<String> list) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'propertyTemplateIds' is null");
        }
        for (String str2 : list) {
            if (str2 == null) {
                throw new IllegalArgumentException("An item in list 'propertyTemplateIds' is null");
            }
            if (str2.length() < 1) {
                throw new IllegalArgumentException("Stringan item in list 'propertyTemplateIds' is shorter than 1");
            }
            if (!Pattern.matches("(/|ptid:).*", str2)) {
                throw new IllegalArgumentException("Stringan item in list 'propertyTemplateIds' does not match pattern");
            }
        }
        this.propertyTemplateIds = list;
    }

    public String getPath() {
        return this.path;
    }

    public List<String> getPropertyTemplateIds() {
        return this.propertyTemplateIds;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, this.propertyTemplateIds});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            RemovePropertiesArg removePropertiesArg = (RemovePropertiesArg) obj;
            return (this.path == removePropertiesArg.path || this.path.equals(removePropertiesArg.path)) && (this.propertyTemplateIds == removePropertiesArg.propertyTemplateIds || this.propertyTemplateIds.equals(removePropertiesArg.propertyTemplateIds));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    public class Serializer extends StructSerializer<RemovePropertiesArg> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RemovePropertiesArg removePropertiesArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(removePropertiesArg.path, gVar);
            gVar.a("property_template_ids");
            StoneSerializers.list(StoneSerializers.string()).serialize(removePropertiesArg.propertyTemplateIds, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RemovePropertiesArg deserialize(k kVar, boolean z) throws IOException {
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
                    if ("path".equals(strD)) {
                        List list3 = list2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        list = list3;
                    } else if ("property_template_ids".equals(strD)) {
                        list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar);
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
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"property_template_ids\" missing.");
                }
                RemovePropertiesArg removePropertiesArg = new RemovePropertiesArg(str, list2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return removePropertiesArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
