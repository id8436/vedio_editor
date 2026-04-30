package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.google.gdata.data.appsforyourdomain.Login;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum Visibility {
    PUBLIC,
    TEAM_ONLY,
    PASSWORD,
    TEAM_AND_PASSWORD,
    SHARED_FOLDER_ONLY,
    OTHER;

    class Serializer extends UnionSerializer<Visibility> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(Visibility visibility, g gVar) throws IOException {
            switch (visibility) {
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
        public Visibility deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            Visibility visibility;
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
                visibility = Visibility.PUBLIC;
            } else if ("team_only".equals(tag)) {
                visibility = Visibility.TEAM_ONLY;
            } else if (Login.ATTRIBUTE_PASSWORD.equals(tag)) {
                visibility = Visibility.PASSWORD;
            } else if ("team_and_password".equals(tag)) {
                visibility = Visibility.TEAM_AND_PASSWORD;
            } else if ("shared_folder_only".equals(tag)) {
                visibility = Visibility.SHARED_FOLDER_ONLY;
            } else {
                visibility = Visibility.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return visibility;
        }
    }
}
