package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum DocLookupError {
    INSUFFICIENT_PERMISSIONS,
    OTHER,
    DOC_NOT_FOUND;

    class Serializer extends UnionSerializer<DocLookupError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(DocLookupError docLookupError, g gVar) throws IOException {
            switch (docLookupError) {
                case INSUFFICIENT_PERMISSIONS:
                    gVar.b("insufficient_permissions");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case DOC_NOT_FOUND:
                    gVar.b("doc_not_found");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + docLookupError);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public DocLookupError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            DocLookupError docLookupError;
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
                docLookupError = DocLookupError.INSUFFICIENT_PERMISSIONS;
            } else if ("other".equals(tag)) {
                docLookupError = DocLookupError.OTHER;
            } else if ("doc_not_found".equals(tag)) {
                docLookupError = DocLookupError.DOC_NOT_FOUND;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return docLookupError;
        }
    }
}
