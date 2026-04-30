package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum PaperDocUpdateError {
    INSUFFICIENT_PERMISSIONS,
    OTHER,
    DOC_NOT_FOUND,
    CONTENT_MALFORMED,
    REVISION_MISMATCH,
    DOC_LENGTH_EXCEEDED,
    IMAGE_SIZE_EXCEEDED,
    DOC_ARCHIVED,
    DOC_DELETED;

    class Serializer extends UnionSerializer<PaperDocUpdateError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PaperDocUpdateError paperDocUpdateError, g gVar) throws IOException {
            switch (paperDocUpdateError) {
                case INSUFFICIENT_PERMISSIONS:
                    gVar.b("insufficient_permissions");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case DOC_NOT_FOUND:
                    gVar.b("doc_not_found");
                    return;
                case CONTENT_MALFORMED:
                    gVar.b("content_malformed");
                    return;
                case REVISION_MISMATCH:
                    gVar.b("revision_mismatch");
                    return;
                case DOC_LENGTH_EXCEEDED:
                    gVar.b("doc_length_exceeded");
                    return;
                case IMAGE_SIZE_EXCEEDED:
                    gVar.b("image_size_exceeded");
                    return;
                case DOC_ARCHIVED:
                    gVar.b("doc_archived");
                    return;
                case DOC_DELETED:
                    gVar.b("doc_deleted");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + paperDocUpdateError);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PaperDocUpdateError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PaperDocUpdateError paperDocUpdateError;
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
                paperDocUpdateError = PaperDocUpdateError.INSUFFICIENT_PERMISSIONS;
            } else if ("other".equals(tag)) {
                paperDocUpdateError = PaperDocUpdateError.OTHER;
            } else if ("doc_not_found".equals(tag)) {
                paperDocUpdateError = PaperDocUpdateError.DOC_NOT_FOUND;
            } else if ("content_malformed".equals(tag)) {
                paperDocUpdateError = PaperDocUpdateError.CONTENT_MALFORMED;
            } else if ("revision_mismatch".equals(tag)) {
                paperDocUpdateError = PaperDocUpdateError.REVISION_MISMATCH;
            } else if ("doc_length_exceeded".equals(tag)) {
                paperDocUpdateError = PaperDocUpdateError.DOC_LENGTH_EXCEEDED;
            } else if ("image_size_exceeded".equals(tag)) {
                paperDocUpdateError = PaperDocUpdateError.IMAGE_SIZE_EXCEEDED;
            } else if ("doc_archived".equals(tag)) {
                paperDocUpdateError = PaperDocUpdateError.DOC_ARCHIVED;
            } else if ("doc_deleted".equals(tag)) {
                paperDocUpdateError = PaperDocUpdateError.DOC_DELETED;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return paperDocUpdateError;
        }
    }
}
