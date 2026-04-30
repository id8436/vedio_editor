package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum PaperApiCursorError {
    EXPIRED_CURSOR,
    INVALID_CURSOR,
    WRONG_USER_IN_CURSOR,
    RESET,
    OTHER;

    class Serializer extends UnionSerializer<PaperApiCursorError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PaperApiCursorError paperApiCursorError, g gVar) throws IOException {
            switch (paperApiCursorError) {
                case EXPIRED_CURSOR:
                    gVar.b("expired_cursor");
                    break;
                case INVALID_CURSOR:
                    gVar.b("invalid_cursor");
                    break;
                case WRONG_USER_IN_CURSOR:
                    gVar.b("wrong_user_in_cursor");
                    break;
                case RESET:
                    gVar.b("reset");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PaperApiCursorError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PaperApiCursorError paperApiCursorError;
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
            if ("expired_cursor".equals(tag)) {
                paperApiCursorError = PaperApiCursorError.EXPIRED_CURSOR;
            } else if ("invalid_cursor".equals(tag)) {
                paperApiCursorError = PaperApiCursorError.INVALID_CURSOR;
            } else if ("wrong_user_in_cursor".equals(tag)) {
                paperApiCursorError = PaperApiCursorError.WRONG_USER_IN_CURSOR;
            } else if ("reset".equals(tag)) {
                paperApiCursorError = PaperApiCursorError.RESET;
            } else {
                paperApiCursorError = PaperApiCursorError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return paperApiCursorError;
        }
    }
}
