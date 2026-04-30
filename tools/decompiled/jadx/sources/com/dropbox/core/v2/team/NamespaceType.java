package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum NamespaceType {
    APP_FOLDER,
    SHARED_FOLDER,
    TEAM_FOLDER,
    TEAM_MEMBER_FOLDER,
    OTHER;

    class Serializer extends UnionSerializer<NamespaceType> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(NamespaceType namespaceType, g gVar) throws IOException {
            switch (namespaceType) {
                case APP_FOLDER:
                    gVar.b("app_folder");
                    break;
                case SHARED_FOLDER:
                    gVar.b("shared_folder");
                    break;
                case TEAM_FOLDER:
                    gVar.b("team_folder");
                    break;
                case TEAM_MEMBER_FOLDER:
                    gVar.b("team_member_folder");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public NamespaceType deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            NamespaceType namespaceType;
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
            if ("app_folder".equals(tag)) {
                namespaceType = NamespaceType.APP_FOLDER;
            } else if ("shared_folder".equals(tag)) {
                namespaceType = NamespaceType.SHARED_FOLDER;
            } else if ("team_folder".equals(tag)) {
                namespaceType = NamespaceType.TEAM_FOLDER;
            } else if ("team_member_folder".equals(tag)) {
                namespaceType = NamespaceType.TEAM_MEMBER_FOLDER;
            } else {
                namespaceType = NamespaceType.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return namespaceType;
        }
    }
}
