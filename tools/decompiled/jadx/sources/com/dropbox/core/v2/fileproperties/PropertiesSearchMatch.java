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

/* JADX INFO: loaded from: classes2.dex */
public class PropertiesSearchMatch {
    protected final String id;
    protected final String path;
    protected final List<PropertyGroup> propertyGroups;

    public PropertiesSearchMatch(String str, String str2, List<PropertyGroup> list) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'id' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        }
        this.id = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        this.path = str2;
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

    public String getId() {
        return this.id;
    }

    public String getPath() {
        return this.path;
    }

    public List<PropertyGroup> getPropertyGroups() {
        return this.propertyGroups;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.id, this.path, this.propertyGroups});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PropertiesSearchMatch propertiesSearchMatch = (PropertiesSearchMatch) obj;
            return (this.id == propertiesSearchMatch.id || this.id.equals(propertiesSearchMatch.id)) && (this.path == propertiesSearchMatch.path || this.path.equals(propertiesSearchMatch.path)) && (this.propertyGroups == propertiesSearchMatch.propertyGroups || this.propertyGroups.equals(propertiesSearchMatch.propertyGroups));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PropertiesSearchMatch> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PropertiesSearchMatch propertiesSearchMatch, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("id");
            StoneSerializers.string().serialize(propertiesSearchMatch.id, gVar);
            gVar.a("path");
            StoneSerializers.string().serialize(propertiesSearchMatch.path, gVar);
            gVar.a("property_groups");
            StoneSerializers.list(PropertyGroup.Serializer.INSTANCE).serialize(propertiesSearchMatch.propertyGroups, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PropertiesSearchMatch deserialize(k kVar, boolean z) throws IOException {
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
                    if ("id".equals(strD)) {
                        List list3 = list2;
                        strDeserialize = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        list = list3;
                    } else if ("path".equals(strD)) {
                        strDeserialize2 = str2;
                        list = list2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("property_groups".equals(strD)) {
                        list = (List) StoneSerializers.list(PropertyGroup.Serializer.INSTANCE).deserialize(kVar);
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
                    throw new j(kVar, "Required field \"id\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"property_groups\" missing.");
                }
                PropertiesSearchMatch propertiesSearchMatch = new PropertiesSearchMatch(str2, str, list2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return propertiesSearchMatch;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
