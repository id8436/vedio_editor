package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.fileproperties.PropertyGroup;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class AddPropertiesArg {
    protected final String path;
    protected final List<PropertyGroup> propertyGroups;

    public AddPropertiesArg(String str, List<PropertyGroup> list) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'propertyGroups' is null");
        }
        Iterator<PropertyGroup> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
            }
        }
        this.propertyGroups = list;
    }

    public String getPath() {
        return this.path;
    }

    public List<PropertyGroup> getPropertyGroups() {
        return this.propertyGroups;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, this.propertyGroups});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            AddPropertiesArg addPropertiesArg = (AddPropertiesArg) obj;
            return (this.path == addPropertiesArg.path || this.path.equals(addPropertiesArg.path)) && (this.propertyGroups == addPropertiesArg.propertyGroups || this.propertyGroups.equals(addPropertiesArg.propertyGroups));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    public class Serializer extends StructSerializer<AddPropertiesArg> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AddPropertiesArg addPropertiesArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(addPropertiesArg.path, gVar);
            gVar.a("property_groups");
            StoneSerializers.list(PropertyGroup.Serializer.INSTANCE).serialize(addPropertiesArg.propertyGroups, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AddPropertiesArg deserialize(k kVar, boolean z) throws IOException {
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
                    } else if ("property_groups".equals(strD)) {
                        list = (List) StoneSerializers.list(PropertyGroup.Serializer.INSTANCE).deserialize(kVar);
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
                    throw new j(kVar, "Required field \"property_groups\" missing.");
                }
                AddPropertiesArg addPropertiesArg = new AddPropertiesArg(str, list2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return addPropertiesArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
