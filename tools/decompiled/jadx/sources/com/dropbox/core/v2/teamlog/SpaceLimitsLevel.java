package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.google.gdata.client.GDataProtocol;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SpaceLimitsLevel {
    GENEROUS,
    MODERATE,
    NO_LIMIT,
    STRICT,
    OTHER;

    class Serializer extends UnionSerializer<SpaceLimitsLevel> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SpaceLimitsLevel spaceLimitsLevel, g gVar) throws IOException {
            switch (spaceLimitsLevel) {
                case GENEROUS:
                    gVar.b("generous");
                    break;
                case MODERATE:
                    gVar.b("moderate");
                    break;
                case NO_LIMIT:
                    gVar.b("no_limit");
                    break;
                case STRICT:
                    gVar.b(GDataProtocol.Parameter.STRICT);
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SpaceLimitsLevel deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SpaceLimitsLevel spaceLimitsLevel;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("generous".equals(tag)) {
                spaceLimitsLevel = SpaceLimitsLevel.GENEROUS;
            } else if ("moderate".equals(tag)) {
                spaceLimitsLevel = SpaceLimitsLevel.MODERATE;
            } else if ("no_limit".equals(tag)) {
                spaceLimitsLevel = SpaceLimitsLevel.NO_LIMIT;
            } else if (GDataProtocol.Parameter.STRICT.equals(tag)) {
                spaceLimitsLevel = SpaceLimitsLevel.STRICT;
            } else {
                spaceLimitsLevel = SpaceLimitsLevel.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return spaceLimitsLevel;
        }
    }
}
