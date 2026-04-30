package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.WriteError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class UploadWriteFailed {
    protected final WriteError reason;
    protected final String uploadSessionId;

    public UploadWriteFailed(WriteError writeError, String str) {
        if (writeError == null) {
            throw new IllegalArgumentException("Required value for 'reason' is null");
        }
        this.reason = writeError;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'uploadSessionId' is null");
        }
        this.uploadSessionId = str;
    }

    public WriteError getReason() {
        return this.reason;
    }

    public String getUploadSessionId() {
        return this.uploadSessionId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.reason, this.uploadSessionId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UploadWriteFailed uploadWriteFailed = (UploadWriteFailed) obj;
            return (this.reason == uploadWriteFailed.reason || this.reason.equals(uploadWriteFailed.reason)) && (this.uploadSessionId == uploadWriteFailed.uploadSessionId || this.uploadSessionId.equals(uploadWriteFailed.uploadSessionId));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<UploadWriteFailed> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UploadWriteFailed uploadWriteFailed, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("reason");
            WriteError.Serializer.INSTANCE.serialize(uploadWriteFailed.reason, gVar);
            gVar.a("upload_session_id");
            StoneSerializers.string().serialize(uploadWriteFailed.uploadSessionId, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UploadWriteFailed deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                WriteError writeErrorDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("reason".equals(strD)) {
                        writeErrorDeserialize = WriteError.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("upload_session_id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (writeErrorDeserialize == null) {
                    throw new j(kVar, "Required field \"reason\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"upload_session_id\" missing.");
                }
                UploadWriteFailed uploadWriteFailed = new UploadWriteFailed(writeErrorDeserialize, strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return uploadWriteFailed;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
