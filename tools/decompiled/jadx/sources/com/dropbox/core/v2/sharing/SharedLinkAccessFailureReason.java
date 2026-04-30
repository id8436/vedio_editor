package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharedLinkAccessFailureReason {
    LOGIN_REQUIRED,
    EMAIL_VERIFY_REQUIRED,
    PASSWORD_REQUIRED,
    TEAM_ONLY,
    OWNER_ONLY,
    OTHER;

    class Serializer extends UnionSerializer<SharedLinkAccessFailureReason> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharedLinkAccessFailureReason sharedLinkAccessFailureReason, g gVar) throws IOException {
            switch (sharedLinkAccessFailureReason) {
                case LOGIN_REQUIRED:
                    gVar.b("login_required");
                    break;
                case EMAIL_VERIFY_REQUIRED:
                    gVar.b("email_verify_required");
                    break;
                case PASSWORD_REQUIRED:
                    gVar.b("password_required");
                    break;
                case TEAM_ONLY:
                    gVar.b("team_only");
                    break;
                case OWNER_ONLY:
                    gVar.b("owner_only");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharedLinkAccessFailureReason deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharedLinkAccessFailureReason sharedLinkAccessFailureReason;
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
            if ("login_required".equals(tag)) {
                sharedLinkAccessFailureReason = SharedLinkAccessFailureReason.LOGIN_REQUIRED;
            } else if ("email_verify_required".equals(tag)) {
                sharedLinkAccessFailureReason = SharedLinkAccessFailureReason.EMAIL_VERIFY_REQUIRED;
            } else if ("password_required".equals(tag)) {
                sharedLinkAccessFailureReason = SharedLinkAccessFailureReason.PASSWORD_REQUIRED;
            } else if ("team_only".equals(tag)) {
                sharedLinkAccessFailureReason = SharedLinkAccessFailureReason.TEAM_ONLY;
            } else if ("owner_only".equals(tag)) {
                sharedLinkAccessFailureReason = SharedLinkAccessFailureReason.OWNER_ONLY;
            } else {
                sharedLinkAccessFailureReason = SharedLinkAccessFailureReason.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharedLinkAccessFailureReason;
        }
    }
}
