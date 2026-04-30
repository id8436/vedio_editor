package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.google.gdata.data.appsforyourdomain.Login;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum RequestedVisibility {
    PUBLIC,
    TEAM_ONLY,
    PASSWORD;

    class Serializer extends UnionSerializer<RequestedVisibility> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RequestedVisibility requestedVisibility, g gVar) throws IOException {
            switch (requestedVisibility) {
                case PUBLIC:
                    gVar.b("public");
                    return;
                case TEAM_ONLY:
                    gVar.b("team_only");
                    return;
                case PASSWORD:
                    gVar.b(Login.ATTRIBUTE_PASSWORD);
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + requestedVisibility);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public RequestedVisibility deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RequestedVisibility requestedVisibility;
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
            if ("public".equals(tag)) {
                requestedVisibility = RequestedVisibility.PUBLIC;
            } else if ("team_only".equals(tag)) {
                requestedVisibility = RequestedVisibility.TEAM_ONLY;
            } else if (Login.ATTRIBUTE_PASSWORD.equals(tag)) {
                requestedVisibility = RequestedVisibility.PASSWORD;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return requestedVisibility;
        }
    }
}
