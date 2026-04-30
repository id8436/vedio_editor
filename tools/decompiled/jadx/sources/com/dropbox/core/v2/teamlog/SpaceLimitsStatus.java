package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SpaceLimitsStatus {
    WITHIN_QUOTA,
    NEAR_QUOTA,
    OVER_QUOTA,
    OTHER;

    class Serializer extends UnionSerializer<SpaceLimitsStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SpaceLimitsStatus spaceLimitsStatus, g gVar) throws IOException {
            switch (spaceLimitsStatus) {
                case WITHIN_QUOTA:
                    gVar.b("within_quota");
                    break;
                case NEAR_QUOTA:
                    gVar.b("near_quota");
                    break;
                case OVER_QUOTA:
                    gVar.b("over_quota");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SpaceLimitsStatus deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SpaceLimitsStatus spaceLimitsStatus;
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
            if ("within_quota".equals(tag)) {
                spaceLimitsStatus = SpaceLimitsStatus.WITHIN_QUOTA;
            } else if ("near_quota".equals(tag)) {
                spaceLimitsStatus = SpaceLimitsStatus.NEAR_QUOTA;
            } else if ("over_quota".equals(tag)) {
                spaceLimitsStatus = SpaceLimitsStatus.OVER_QUOTA;
            } else {
                spaceLimitsStatus = SpaceLimitsStatus.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return spaceLimitsStatus;
        }
    }
}
