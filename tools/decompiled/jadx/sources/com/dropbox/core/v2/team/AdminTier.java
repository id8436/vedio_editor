package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum AdminTier {
    TEAM_ADMIN,
    USER_MANAGEMENT_ADMIN,
    SUPPORT_ADMIN,
    MEMBER_ONLY;

    class Serializer extends UnionSerializer<AdminTier> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AdminTier adminTier, g gVar) throws IOException {
            switch (adminTier) {
                case TEAM_ADMIN:
                    gVar.b("team_admin");
                    return;
                case USER_MANAGEMENT_ADMIN:
                    gVar.b("user_management_admin");
                    return;
                case SUPPORT_ADMIN:
                    gVar.b("support_admin");
                    return;
                case MEMBER_ONLY:
                    gVar.b("member_only");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + adminTier);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AdminTier deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AdminTier adminTier;
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
            if ("team_admin".equals(tag)) {
                adminTier = AdminTier.TEAM_ADMIN;
            } else if ("user_management_admin".equals(tag)) {
                adminTier = AdminTier.USER_MANAGEMENT_ADMIN;
            } else if ("support_admin".equals(tag)) {
                adminTier = AdminTier.SUPPORT_ADMIN;
            } else if ("member_only".equals(tag)) {
                adminTier = AdminTier.MEMBER_ONLY;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return adminTier;
        }
    }
}
