package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class Folder {
    protected final String id;
    protected final String name;

    public Folder(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'id' is null");
        }
        this.id = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str2;
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.id, this.name});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            Folder folder = (Folder) obj;
            return (this.id == folder.id || this.id.equals(folder.id)) && (this.name == folder.name || this.name.equals(folder.name));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<Folder> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(Folder folder, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("id");
            StoneSerializers.string().serialize(folder.id, gVar);
            gVar.a("name");
            StoneSerializers.string().serialize(folder.name, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public Folder deserialize(k kVar, boolean z) throws IOException {
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
                    if ("id".equals(strD)) {
                        String str3 = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str3;
                    } else if ("name".equals(strD)) {
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
                    throw new j(kVar, "Required field \"id\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                Folder folder = new Folder(str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return folder;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
