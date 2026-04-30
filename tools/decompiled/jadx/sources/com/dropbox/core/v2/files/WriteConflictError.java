package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum WriteConflictError {
    FILE,
    FOLDER,
    FILE_ANCESTOR,
    OTHER;

    class Serializer extends UnionSerializer<WriteConflictError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(WriteConflictError writeConflictError, g gVar) throws IOException {
            switch (writeConflictError) {
                case FILE:
                    gVar.b("file");
                    break;
                case FOLDER:
                    gVar.b("folder");
                    break;
                case FILE_ANCESTOR:
                    gVar.b("file_ancestor");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public WriteConflictError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            WriteConflictError writeConflictError;
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
            if ("file".equals(tag)) {
                writeConflictError = WriteConflictError.FILE;
            } else if ("folder".equals(tag)) {
                writeConflictError = WriteConflictError.FOLDER;
            } else if ("file_ancestor".equals(tag)) {
                writeConflictError = WriteConflictError.FILE_ANCESTOR;
            } else {
                writeConflictError = WriteConflictError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return writeConflictError;
        }
    }
}
