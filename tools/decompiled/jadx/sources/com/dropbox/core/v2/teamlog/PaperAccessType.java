package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum PaperAccessType {
    VIEWER,
    COMMENTER,
    EDITOR,
    OTHER;

    class Serializer extends UnionSerializer<PaperAccessType> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PaperAccessType paperAccessType, g gVar) throws IOException {
            switch (paperAccessType) {
                case VIEWER:
                    gVar.b("viewer");
                    break;
                case COMMENTER:
                    gVar.b("commenter");
                    break;
                case EDITOR:
                    gVar.b("editor");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PaperAccessType deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PaperAccessType paperAccessType;
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
            if ("viewer".equals(tag)) {
                paperAccessType = PaperAccessType.VIEWER;
            } else if ("commenter".equals(tag)) {
                paperAccessType = PaperAccessType.COMMENTER;
            } else if ("editor".equals(tag)) {
                paperAccessType = PaperAccessType.EDITOR;
            } else {
                paperAccessType = PaperAccessType.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return paperAccessType;
        }
    }
}
