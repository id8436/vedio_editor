package com.dropbox.core.v2.auth;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum RateLimitReason {
    TOO_MANY_REQUESTS,
    TOO_MANY_WRITE_OPERATIONS,
    OTHER;

    public class Serializer extends UnionSerializer<RateLimitReason> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RateLimitReason rateLimitReason, g gVar) throws IOException {
            switch (rateLimitReason) {
                case TOO_MANY_REQUESTS:
                    gVar.b("too_many_requests");
                    break;
                case TOO_MANY_WRITE_OPERATIONS:
                    gVar.b("too_many_write_operations");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public RateLimitReason deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RateLimitReason rateLimitReason;
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
            if ("too_many_requests".equals(tag)) {
                rateLimitReason = RateLimitReason.TOO_MANY_REQUESTS;
            } else if ("too_many_write_operations".equals(tag)) {
                rateLimitReason = RateLimitReason.TOO_MANY_WRITE_OPERATIONS;
            } else {
                rateLimitReason = RateLimitReason.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return rateLimitReason;
        }
    }
}
