package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharingInfo {
    protected final boolean readOnly;

    public SharingInfo(boolean z) {
        this.readOnly = z;
    }

    public boolean getReadOnly() {
        return this.readOnly;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.readOnly)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.readOnly == ((SharingInfo) obj).readOnly;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SharingInfo> {
        public static final Serializer INSTANCE = new Serializer();

        private Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharingInfo sharingInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("read_only");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(sharingInfo.readOnly), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharingInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize = null;
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
                    if ("read_only".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (boolDeserialize == null) {
                    throw new j(kVar, "Required field \"read_only\" missing.");
                }
                SharingInfo sharingInfo = new SharingInfo(boolDeserialize.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharingInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
