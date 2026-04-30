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
public class AudienceExceptionContentInfo {
    protected final String name;

    public AudienceExceptionContentInfo(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.name});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AudienceExceptionContentInfo audienceExceptionContentInfo = (AudienceExceptionContentInfo) obj;
        return this.name == audienceExceptionContentInfo.name || this.name.equals(audienceExceptionContentInfo.name);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<AudienceExceptionContentInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AudienceExceptionContentInfo audienceExceptionContentInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("name");
            StoneSerializers.string().serialize(audienceExceptionContentInfo.name, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AudienceExceptionContentInfo deserialize(k kVar, boolean z) throws IOException {
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
                    if ("name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                AudienceExceptionContentInfo audienceExceptionContentInfo = new AudienceExceptionContentInfo(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return audienceExceptionContentInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
