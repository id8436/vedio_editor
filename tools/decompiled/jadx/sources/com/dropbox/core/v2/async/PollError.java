package com.dropbox.core.v2.async;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum PollError {
    INVALID_ASYNC_JOB_ID,
    INTERNAL_ERROR,
    OTHER;

    public class Serializer extends UnionSerializer<PollError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PollError pollError, g gVar) throws IOException {
            switch (pollError) {
                case INVALID_ASYNC_JOB_ID:
                    gVar.b("invalid_async_job_id");
                    break;
                case INTERNAL_ERROR:
                    gVar.b("internal_error");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PollError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PollError pollError;
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
            if ("invalid_async_job_id".equals(tag)) {
                pollError = PollError.INVALID_ASYNC_JOB_ID;
            } else if ("internal_error".equals(tag)) {
                pollError = PollError.INTERNAL_ERROR;
            } else {
                pollError = PollError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return pollError;
        }
    }
}
