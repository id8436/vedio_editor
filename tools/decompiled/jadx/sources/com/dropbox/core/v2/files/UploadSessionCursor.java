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
public class UploadSessionCursor {
    protected final long offset;
    protected final String sessionId;

    public UploadSessionCursor(String str, long j) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sessionId' is null");
        }
        this.sessionId = str;
        this.offset = j;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public long getOffset() {
        return this.offset;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sessionId, Long.valueOf(this.offset)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UploadSessionCursor uploadSessionCursor = (UploadSessionCursor) obj;
            return (this.sessionId == uploadSessionCursor.sessionId || this.sessionId.equals(uploadSessionCursor.sessionId)) && this.offset == uploadSessionCursor.offset;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<UploadSessionCursor> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UploadSessionCursor uploadSessionCursor, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("session_id");
            StoneSerializers.string().serialize(uploadSessionCursor.sessionId, gVar);
            gVar.a("offset");
            StoneSerializers.uInt64().serialize(Long.valueOf(uploadSessionCursor.offset), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UploadSessionCursor deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            String strDeserialize;
            Long l = null;
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
                    if ("session_id".equals(strD)) {
                        Long l2 = l;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l2;
                    } else if ("offset".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    l = lDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"session_id\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"offset\" missing.");
                }
                UploadSessionCursor uploadSessionCursor = new UploadSessionCursor(str, l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return uploadSessionCursor;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
