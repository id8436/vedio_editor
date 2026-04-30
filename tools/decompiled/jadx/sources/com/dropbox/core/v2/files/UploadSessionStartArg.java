package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: loaded from: classes2.dex */
class UploadSessionStartArg {
    protected final boolean close;

    public UploadSessionStartArg(boolean z) {
        this.close = z;
    }

    public UploadSessionStartArg() {
        this(false);
    }

    public boolean getClose() {
        return this.close;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.close)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.close == ((UploadSessionStartArg) obj).close;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<UploadSessionStartArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UploadSessionStartArg uploadSessionStartArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a(HttpHeaderValues.CLOSE);
            StoneSerializers.boolean_().serialize(Boolean.valueOf(uploadSessionStartArg.close), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UploadSessionStartArg deserialize(k kVar, boolean z) throws IOException {
            String tag = null;
            if (!z) {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean boolDeserialize = false;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if (HttpHeaderValues.CLOSE.equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                UploadSessionStartArg uploadSessionStartArg = new UploadSessionStartArg(boolDeserialize.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return uploadSessionStartArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
