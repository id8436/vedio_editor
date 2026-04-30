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
public class UploadSessionOffsetError {
    protected final long correctOffset;

    public UploadSessionOffsetError(long j) {
        this.correctOffset = j;
    }

    public long getCorrectOffset() {
        return this.correctOffset;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.correctOffset)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.correctOffset == ((UploadSessionOffsetError) obj).correctOffset;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<UploadSessionOffsetError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UploadSessionOffsetError uploadSessionOffsetError, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("correct_offset");
            StoneSerializers.uInt64().serialize(Long.valueOf(uploadSessionOffsetError.correctOffset), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UploadSessionOffsetError deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize = null;
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
                    if ("correct_offset".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (lDeserialize == null) {
                    throw new j(kVar, "Required field \"correct_offset\" missing.");
                }
                UploadSessionOffsetError uploadSessionOffsetError = new UploadSessionOffsetError(lDeserialize.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return uploadSessionOffsetError;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
