package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.UploadSessionCursor;
import java.io.IOException;
import java.util.Arrays;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: loaded from: classes2.dex */
class UploadSessionAppendArg {
    protected final boolean close;
    protected final UploadSessionCursor cursor;

    public UploadSessionAppendArg(UploadSessionCursor uploadSessionCursor, boolean z) {
        if (uploadSessionCursor == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = uploadSessionCursor;
        this.close = z;
    }

    public UploadSessionAppendArg(UploadSessionCursor uploadSessionCursor) {
        this(uploadSessionCursor, false);
    }

    public UploadSessionCursor getCursor() {
        return this.cursor;
    }

    public boolean getClose() {
        return this.close;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.cursor, Boolean.valueOf(this.close)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UploadSessionAppendArg uploadSessionAppendArg = (UploadSessionAppendArg) obj;
            return (this.cursor == uploadSessionAppendArg.cursor || this.cursor.equals(uploadSessionAppendArg.cursor)) && this.close == uploadSessionAppendArg.close;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<UploadSessionAppendArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UploadSessionAppendArg uploadSessionAppendArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("cursor");
            UploadSessionCursor.Serializer.INSTANCE.serialize(uploadSessionAppendArg.cursor, gVar);
            gVar.a(HttpHeaderValues.CLOSE);
            StoneSerializers.boolean_().serialize(Boolean.valueOf(uploadSessionAppendArg.close), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UploadSessionAppendArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            UploadSessionCursor uploadSessionCursorDeserialize;
            UploadSessionCursor uploadSessionCursor = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = false;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("cursor".equals(strD)) {
                        Boolean bool2 = bool;
                        uploadSessionCursorDeserialize = UploadSessionCursor.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if (HttpHeaderValues.CLOSE.equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        uploadSessionCursorDeserialize = uploadSessionCursor;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        uploadSessionCursorDeserialize = uploadSessionCursor;
                    }
                    uploadSessionCursor = uploadSessionCursorDeserialize;
                    bool = boolDeserialize;
                }
                if (uploadSessionCursor == null) {
                    throw new j(kVar, "Required field \"cursor\" missing.");
                }
                UploadSessionAppendArg uploadSessionAppendArg = new UploadSessionAppendArg(uploadSessionCursor, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return uploadSessionAppendArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
