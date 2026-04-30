package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharedFolderAccessError {
    INVALID_ID,
    NOT_A_MEMBER,
    EMAIL_UNVERIFIED,
    UNMOUNTED,
    OTHER;

    class Serializer extends UnionSerializer<SharedFolderAccessError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharedFolderAccessError sharedFolderAccessError, g gVar) throws IOException {
            switch (sharedFolderAccessError) {
                case INVALID_ID:
                    gVar.b("invalid_id");
                    break;
                case NOT_A_MEMBER:
                    gVar.b("not_a_member");
                    break;
                case EMAIL_UNVERIFIED:
                    gVar.b("email_unverified");
                    break;
                case UNMOUNTED:
                    gVar.b("unmounted");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharedFolderAccessError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharedFolderAccessError sharedFolderAccessError;
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
            if ("invalid_id".equals(tag)) {
                sharedFolderAccessError = SharedFolderAccessError.INVALID_ID;
            } else if ("not_a_member".equals(tag)) {
                sharedFolderAccessError = SharedFolderAccessError.NOT_A_MEMBER;
            } else if ("email_unverified".equals(tag)) {
                sharedFolderAccessError = SharedFolderAccessError.EMAIL_UNVERIFIED;
            } else if ("unmounted".equals(tag)) {
                sharedFolderAccessError = SharedFolderAccessError.UNMOUNTED;
            } else {
                sharedFolderAccessError = SharedFolderAccessError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharedFolderAccessError;
        }
    }
}
