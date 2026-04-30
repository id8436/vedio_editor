package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GetThumbnailBatchError {
    TOO_MANY_FILES,
    OTHER;

    class Serializer extends UnionSerializer<GetThumbnailBatchError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GetThumbnailBatchError getThumbnailBatchError, g gVar) throws IOException {
            switch (getThumbnailBatchError) {
                case TOO_MANY_FILES:
                    gVar.b("too_many_files");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GetThumbnailBatchError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GetThumbnailBatchError getThumbnailBatchError;
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
            if ("too_many_files".equals(tag)) {
                getThumbnailBatchError = GetThumbnailBatchError.TOO_MANY_FILES;
            } else {
                getThumbnailBatchError = GetThumbnailBatchError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return getThumbnailBatchError;
        }
    }
}
