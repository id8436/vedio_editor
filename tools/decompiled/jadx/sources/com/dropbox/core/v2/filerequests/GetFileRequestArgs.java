package com.dropbox.core.v2.filerequests;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class GetFileRequestArgs {
    protected final String id;

    public GetFileRequestArgs(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'id' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z]+", str)) {
            throw new IllegalArgumentException("String 'id' does not match pattern");
        }
        this.id = str;
    }

    public String getId() {
        return this.id;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.id});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetFileRequestArgs getFileRequestArgs = (GetFileRequestArgs) obj;
        return this.id == getFileRequestArgs.id || this.id.equals(getFileRequestArgs.id);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GetFileRequestArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetFileRequestArgs getFileRequestArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("id");
            StoneSerializers.string().serialize(getFileRequestArgs.id, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetFileRequestArgs deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize = null;
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
                    if ("id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"id\" missing.");
                }
                GetFileRequestArgs getFileRequestArgs = new GetFileRequestArgs(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getFileRequestArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
