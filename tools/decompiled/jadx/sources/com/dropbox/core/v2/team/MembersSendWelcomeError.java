package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum MembersSendWelcomeError {
    USER_NOT_FOUND,
    USER_NOT_IN_TEAM,
    OTHER;

    class Serializer extends UnionSerializer<MembersSendWelcomeError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MembersSendWelcomeError membersSendWelcomeError, g gVar) throws IOException {
            switch (membersSendWelcomeError) {
                case USER_NOT_FOUND:
                    gVar.b("user_not_found");
                    break;
                case USER_NOT_IN_TEAM:
                    gVar.b("user_not_in_team");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MembersSendWelcomeError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MembersSendWelcomeError membersSendWelcomeError;
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
            if ("user_not_found".equals(tag)) {
                membersSendWelcomeError = MembersSendWelcomeError.USER_NOT_FOUND;
            } else if ("user_not_in_team".equals(tag)) {
                membersSendWelcomeError = MembersSendWelcomeError.USER_NOT_IN_TEAM;
            } else {
                membersSendWelcomeError = MembersSendWelcomeError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return membersSendWelcomeError;
        }
    }
}
