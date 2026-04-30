package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ApiSessionLogInfo {
    protected final String requestId;

    public ApiSessionLogInfo(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'requestId' is null");
        }
        this.requestId = str;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.requestId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ApiSessionLogInfo apiSessionLogInfo = (ApiSessionLogInfo) obj;
        return this.requestId == apiSessionLogInfo.requestId || this.requestId.equals(apiSessionLogInfo.requestId);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ApiSessionLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ApiSessionLogInfo apiSessionLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("request_id");
            StoneSerializers.string().serialize(apiSessionLogInfo.requestId, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ApiSessionLogInfo deserialize(k kVar, boolean z) throws IOException {
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
                    if ("request_id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"request_id\" missing.");
                }
                ApiSessionLogInfo apiSessionLogInfo = new ApiSessionLogInfo(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return apiSessionLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
