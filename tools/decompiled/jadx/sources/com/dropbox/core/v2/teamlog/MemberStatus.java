package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.google.gdata.data.appsforyourdomain.Login;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum MemberStatus {
    NOT_JOINED,
    INVITED,
    ACTIVE,
    SUSPENDED,
    REMOVED,
    OTHER;

    class Serializer extends UnionSerializer<MemberStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MemberStatus memberStatus, g gVar) throws IOException {
            switch (memberStatus) {
                case NOT_JOINED:
                    gVar.b("not_joined");
                    break;
                case INVITED:
                    gVar.b("invited");
                    break;
                case ACTIVE:
                    gVar.b("active");
                    break;
                case SUSPENDED:
                    gVar.b(Login.ATTRIBUTE_SUSPENDED);
                    break;
                case REMOVED:
                    gVar.b("removed");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MemberStatus deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MemberStatus memberStatus;
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
            if ("not_joined".equals(tag)) {
                memberStatus = MemberStatus.NOT_JOINED;
            } else if ("invited".equals(tag)) {
                memberStatus = MemberStatus.INVITED;
            } else if ("active".equals(tag)) {
                memberStatus = MemberStatus.ACTIVE;
            } else if (Login.ATTRIBUTE_SUSPENDED.equals(tag)) {
                memberStatus = MemberStatus.SUSPENDED;
            } else if ("removed".equals(tag)) {
                memberStatus = MemberStatus.REMOVED;
            } else {
                memberStatus = MemberStatus.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return memberStatus;
        }
    }
}
