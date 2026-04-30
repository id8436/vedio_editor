package com.dropbox.core.v2.sharing;

import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum AccessLevel {
    OWNER,
    EDITOR,
    VIEWER,
    VIEWER_NO_COMMENT,
    OTHER;

    class Serializer extends UnionSerializer<AccessLevel> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AccessLevel accessLevel, g gVar) throws IOException {
            switch (accessLevel) {
                case OWNER:
                    gVar.b(DCXProjectKeys.kDCXKey_Project_owner);
                    break;
                case EDITOR:
                    gVar.b("editor");
                    break;
                case VIEWER:
                    gVar.b("viewer");
                    break;
                case VIEWER_NO_COMMENT:
                    gVar.b("viewer_no_comment");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AccessLevel deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AccessLevel accessLevel;
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
            if (DCXProjectKeys.kDCXKey_Project_owner.equals(tag)) {
                accessLevel = AccessLevel.OWNER;
            } else if ("editor".equals(tag)) {
                accessLevel = AccessLevel.EDITOR;
            } else if ("viewer".equals(tag)) {
                accessLevel = AccessLevel.VIEWER;
            } else if ("viewer_no_comment".equals(tag)) {
                accessLevel = AccessLevel.VIEWER_NO_COMMENT;
            } else {
                accessLevel = AccessLevel.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return accessLevel;
        }
    }
}
