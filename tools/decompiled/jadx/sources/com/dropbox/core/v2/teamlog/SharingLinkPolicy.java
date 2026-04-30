package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharingLinkPolicy {
    DEFAULT_PRIVATE,
    DEFAULT_PUBLIC,
    ONLY_PRIVATE,
    OTHER;

    class Serializer extends UnionSerializer<SharingLinkPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharingLinkPolicy sharingLinkPolicy, g gVar) throws IOException {
            switch (sharingLinkPolicy) {
                case DEFAULT_PRIVATE:
                    gVar.b("default_private");
                    break;
                case DEFAULT_PUBLIC:
                    gVar.b("default_public");
                    break;
                case ONLY_PRIVATE:
                    gVar.b("only_private");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharingLinkPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharingLinkPolicy sharingLinkPolicy;
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
            if ("default_private".equals(tag)) {
                sharingLinkPolicy = SharingLinkPolicy.DEFAULT_PRIVATE;
            } else if ("default_public".equals(tag)) {
                sharingLinkPolicy = SharingLinkPolicy.DEFAULT_PUBLIC;
            } else if ("only_private".equals(tag)) {
                sharingLinkPolicy = SharingLinkPolicy.ONLY_PRIVATE;
            } else {
                sharingLinkPolicy = SharingLinkPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharingLinkPolicy;
        }
    }
}
