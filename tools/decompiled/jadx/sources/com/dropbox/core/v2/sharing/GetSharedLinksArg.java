package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class GetSharedLinksArg {
    protected final String path;

    public GetSharedLinksArg(String str) {
        this.path = str;
    }

    public GetSharedLinksArg() {
        this(null);
    }

    public String getPath() {
        return this.path;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetSharedLinksArg getSharedLinksArg = (GetSharedLinksArg) obj;
        return this.path == getSharedLinksArg.path || (this.path != null && this.path.equals(getSharedLinksArg.path));
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GetSharedLinksArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetSharedLinksArg getSharedLinksArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (getSharedLinksArg.path != null) {
                gVar.a("path");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(getSharedLinksArg.path, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetSharedLinksArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("path".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                GetSharedLinksArg getSharedLinksArg = new GetSharedLinksArg(str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getSharedLinksArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
