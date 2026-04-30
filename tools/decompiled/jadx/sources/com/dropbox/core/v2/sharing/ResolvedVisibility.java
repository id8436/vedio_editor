package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.google.gdata.data.appsforyourdomain.Login;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ResolvedVisibility {
    PUBLIC,
    TEAM_ONLY,
    PASSWORD,
    TEAM_AND_PASSWORD,
    SHARED_FOLDER_ONLY,
    OTHER;

    class Serializer extends UnionSerializer<ResolvedVisibility> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ResolvedVisibility resolvedVisibility, g gVar) throws IOException {
            switch (resolvedVisibility) {
                case PUBLIC:
                    gVar.b("public");
                    break;
                case TEAM_ONLY:
                    gVar.b("team_only");
                    break;
                case PASSWORD:
                    gVar.b(Login.ATTRIBUTE_PASSWORD);
                    break;
                case TEAM_AND_PASSWORD:
                    gVar.b("team_and_password");
                    break;
                case SHARED_FOLDER_ONLY:
                    gVar.b("shared_folder_only");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ResolvedVisibility deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ResolvedVisibility resolvedVisibility;
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
                resolvedVisibility = ResolvedVisibility.PUBLIC;
            } else if ("team_only".equals(tag)) {
                resolvedVisibility = ResolvedVisibility.TEAM_ONLY;
            } else if (Login.ATTRIBUTE_PASSWORD.equals(tag)) {
                resolvedVisibility = ResolvedVisibility.PASSWORD;
            } else if ("team_and_password".equals(tag)) {
                resolvedVisibility = ResolvedVisibility.TEAM_AND_PASSWORD;
            } else if ("shared_folder_only".equals(tag)) {
                resolvedVisibility = ResolvedVisibility.SHARED_FOLDER_ONLY;
            } else {
                resolvedVisibility = ResolvedVisibility.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return resolvedVisibility;
        }
    }
}
