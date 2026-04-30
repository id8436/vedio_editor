package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum Confidentiality {
    CONFIDENTIAL,
    NON_CONFIDENTIAL,
    OTHER;

    class Serializer extends UnionSerializer<Confidentiality> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(Confidentiality confidentiality, g gVar) throws IOException {
            switch (confidentiality) {
                case CONFIDENTIAL:
                    gVar.b("confidential");
                    break;
                case NON_CONFIDENTIAL:
                    gVar.b("non_confidential");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public Confidentiality deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            Confidentiality confidentiality;
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
            if ("confidential".equals(tag)) {
                confidentiality = Confidentiality.CONFIDENTIAL;
            } else if ("non_confidential".equals(tag)) {
                confidentiality = Confidentiality.NON_CONFIDENTIAL;
            } else {
                confidentiality = Confidentiality.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return confidentiality;
        }
    }
}
