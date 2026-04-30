package com.dropbox.core.v2.auth;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.auth.RateLimitReason;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class RateLimitError {
    protected final RateLimitReason reason;
    protected final long retryAfter;

    public RateLimitError(RateLimitReason rateLimitReason, long j) {
        if (rateLimitReason == null) {
            throw new IllegalArgumentException("Required value for 'reason' is null");
        }
        this.reason = rateLimitReason;
        this.retryAfter = j;
    }

    public RateLimitError(RateLimitReason rateLimitReason) {
        this(rateLimitReason, 1L);
    }

    public RateLimitReason getReason() {
        return this.reason;
    }

    public long getRetryAfter() {
        return this.retryAfter;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.reason, Long.valueOf(this.retryAfter)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            RateLimitError rateLimitError = (RateLimitError) obj;
            return (this.reason == rateLimitError.reason || this.reason.equals(rateLimitError.reason)) && this.retryAfter == rateLimitError.retryAfter;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    public class Serializer extends StructSerializer<RateLimitError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RateLimitError rateLimitError, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("reason");
            RateLimitReason.Serializer.INSTANCE.serialize(rateLimitError.reason, gVar);
            gVar.a("retry_after");
            StoneSerializers.uInt64().serialize(Long.valueOf(rateLimitError.retryAfter), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RateLimitError deserialize(k kVar, boolean z) throws IOException {
            String tag;
            RateLimitReason rateLimitReasonDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long lDeserialize = 1L;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("reason".equals(strD)) {
                        rateLimitReasonDeserialize = RateLimitReason.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("retry_after".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (rateLimitReasonDeserialize == null) {
                    throw new j(kVar, "Required field \"reason\" missing.");
                }
                RateLimitError rateLimitError = new RateLimitError(rateLimitReasonDeserialize, lDeserialize.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return rateLimitError;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
