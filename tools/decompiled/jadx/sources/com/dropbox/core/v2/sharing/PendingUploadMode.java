package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum PendingUploadMode {
    FILE,
    FOLDER;

    class Serializer extends UnionSerializer<PendingUploadMode> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PendingUploadMode pendingUploadMode, g gVar) throws IOException {
            switch (pendingUploadMode) {
                case FILE:
                    gVar.b("file");
                    return;
                case FOLDER:
                    gVar.b("folder");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + pendingUploadMode);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PendingUploadMode deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PendingUploadMode pendingUploadMode;
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
                pendingUploadMode = PendingUploadMode.FILE;
            } else if ("folder".equals(tag)) {
                pendingUploadMode = PendingUploadMode.FOLDER;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return pendingUploadMode;
        }
    }
}
