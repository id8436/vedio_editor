package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum DeleteBatchError {
    TOO_MANY_WRITE_OPERATIONS,
    OTHER;

    class Serializer extends UnionSerializer<DeleteBatchError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(DeleteBatchError deleteBatchError, g gVar) throws IOException {
            switch (deleteBatchError) {
                case TOO_MANY_WRITE_OPERATIONS:
                    gVar.b("too_many_write_operations");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public DeleteBatchError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            DeleteBatchError deleteBatchError;
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
            if ("too_many_write_operations".equals(tag)) {
                deleteBatchError = DeleteBatchError.TOO_MANY_WRITE_OPERATIONS;
            } else {
                deleteBatchError = DeleteBatchError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return deleteBatchError;
        }
    }
}
