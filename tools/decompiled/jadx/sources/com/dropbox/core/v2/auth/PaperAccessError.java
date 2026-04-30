package com.dropbox.core.v2.auth;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum PaperAccessError {
    PAPER_DISABLED,
    NOT_PAPER_USER,
    OTHER;

    public class Serializer extends UnionSerializer<PaperAccessError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PaperAccessError paperAccessError, g gVar) throws IOException {
            switch (paperAccessError) {
                case PAPER_DISABLED:
                    gVar.b("paper_disabled");
                    break;
                case NOT_PAPER_USER:
                    gVar.b("not_paper_user");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PaperAccessError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PaperAccessError paperAccessError;
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
            if ("paper_disabled".equals(tag)) {
                paperAccessError = PaperAccessError.PAPER_DISABLED;
            } else if ("not_paper_user".equals(tag)) {
                paperAccessError = PaperAccessError.NOT_PAPER_USER;
            } else {
                paperAccessError = PaperAccessError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return paperAccessError;
        }
    }
}
