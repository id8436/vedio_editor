package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum PaperDocCreateError {
    INSUFFICIENT_PERMISSIONS,
    OTHER,
    CONTENT_MALFORMED,
    FOLDER_NOT_FOUND,
    DOC_LENGTH_EXCEEDED,
    IMAGE_SIZE_EXCEEDED;

    class Serializer extends UnionSerializer<PaperDocCreateError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PaperDocCreateError paperDocCreateError, g gVar) throws IOException {
            switch (paperDocCreateError) {
                case INSUFFICIENT_PERMISSIONS:
                    gVar.b("insufficient_permissions");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case CONTENT_MALFORMED:
                    gVar.b("content_malformed");
                    return;
                case FOLDER_NOT_FOUND:
                    gVar.b("folder_not_found");
                    return;
                case DOC_LENGTH_EXCEEDED:
                    gVar.b("doc_length_exceeded");
                    return;
                case IMAGE_SIZE_EXCEEDED:
                    gVar.b("image_size_exceeded");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + paperDocCreateError);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PaperDocCreateError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PaperDocCreateError paperDocCreateError;
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
            if ("insufficient_permissions".equals(tag)) {
                paperDocCreateError = PaperDocCreateError.INSUFFICIENT_PERMISSIONS;
            } else if ("other".equals(tag)) {
                paperDocCreateError = PaperDocCreateError.OTHER;
            } else if ("content_malformed".equals(tag)) {
                paperDocCreateError = PaperDocCreateError.CONTENT_MALFORMED;
            } else if ("folder_not_found".equals(tag)) {
                paperDocCreateError = PaperDocCreateError.FOLDER_NOT_FOUND;
            } else if ("doc_length_exceeded".equals(tag)) {
                paperDocCreateError = PaperDocCreateError.DOC_LENGTH_EXCEEDED;
            } else if ("image_size_exceeded".equals(tag)) {
                paperDocCreateError = PaperDocCreateError.IMAGE_SIZE_EXCEEDED;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return paperDocCreateError;
        }
    }
}
