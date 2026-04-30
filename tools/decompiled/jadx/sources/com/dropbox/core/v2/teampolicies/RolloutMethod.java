package com.dropbox.core.v2.teampolicies;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum RolloutMethod {
    UNLINK_ALL,
    UNLINK_MOST_INACTIVE,
    ADD_MEMBER_TO_EXCEPTIONS;

    public class Serializer extends UnionSerializer<RolloutMethod> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RolloutMethod rolloutMethod, g gVar) throws IOException {
            switch (rolloutMethod) {
                case UNLINK_ALL:
                    gVar.b("unlink_all");
                    return;
                case UNLINK_MOST_INACTIVE:
                    gVar.b("unlink_most_inactive");
                    return;
                case ADD_MEMBER_TO_EXCEPTIONS:
                    gVar.b("add_member_to_exceptions");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + rolloutMethod);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public RolloutMethod deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RolloutMethod rolloutMethod;
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
            if ("unlink_all".equals(tag)) {
                rolloutMethod = RolloutMethod.UNLINK_ALL;
            } else if ("unlink_most_inactive".equals(tag)) {
                rolloutMethod = RolloutMethod.UNLINK_MOST_INACTIVE;
            } else if ("add_member_to_exceptions".equals(tag)) {
                rolloutMethod = RolloutMethod.ADD_MEMBER_TO_EXCEPTIONS;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return rolloutMethod;
        }
    }
}
