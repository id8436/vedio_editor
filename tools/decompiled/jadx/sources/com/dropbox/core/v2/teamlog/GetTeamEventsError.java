package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GetTeamEventsError {
    ACCOUNT_ID_NOT_FOUND,
    INVALID_TIME_RANGE,
    OTHER;

    class Serializer extends UnionSerializer<GetTeamEventsError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GetTeamEventsError getTeamEventsError, g gVar) throws IOException {
            switch (getTeamEventsError) {
                case ACCOUNT_ID_NOT_FOUND:
                    gVar.b("account_id_not_found");
                    break;
                case INVALID_TIME_RANGE:
                    gVar.b("invalid_time_range");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GetTeamEventsError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GetTeamEventsError getTeamEventsError;
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
            if ("account_id_not_found".equals(tag)) {
                getTeamEventsError = GetTeamEventsError.ACCOUNT_ID_NOT_FOUND;
            } else if ("invalid_time_range".equals(tag)) {
                getTeamEventsError = GetTeamEventsError.INVALID_TIME_RANGE;
            } else {
                getTeamEventsError = GetTeamEventsError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return getTeamEventsError;
        }
    }
}
