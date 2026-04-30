package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GroupsPollError {
    INVALID_ASYNC_JOB_ID,
    INTERNAL_ERROR,
    OTHER,
    ACCESS_DENIED;

    class Serializer extends UnionSerializer<GroupsPollError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupsPollError groupsPollError, g gVar) throws IOException {
            switch (groupsPollError) {
                case INVALID_ASYNC_JOB_ID:
                    gVar.b("invalid_async_job_id");
                    return;
                case INTERNAL_ERROR:
                    gVar.b("internal_error");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case ACCESS_DENIED:
                    gVar.b("access_denied");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + groupsPollError);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupsPollError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GroupsPollError groupsPollError;
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
                groupsPollError = GroupsPollError.INVALID_ASYNC_JOB_ID;
            } else if ("internal_error".equals(tag)) {
                groupsPollError = GroupsPollError.INTERNAL_ERROR;
            } else if ("other".equals(tag)) {
                groupsPollError = GroupsPollError.OTHER;
            } else if ("access_denied".equals(tag)) {
                groupsPollError = GroupsPollError.ACCESS_DENIED;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return groupsPollError;
        }
    }
}
