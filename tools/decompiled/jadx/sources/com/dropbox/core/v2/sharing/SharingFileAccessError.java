package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharingFileAccessError {
    NO_PERMISSION,
    INVALID_FILE,
    IS_FOLDER,
    INSIDE_PUBLIC_FOLDER,
    INSIDE_OSX_PACKAGE,
    OTHER;

    class Serializer extends UnionSerializer<SharingFileAccessError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharingFileAccessError sharingFileAccessError, g gVar) throws IOException {
            switch (sharingFileAccessError) {
                case NO_PERMISSION:
                    gVar.b("no_permission");
                    break;
                case INVALID_FILE:
                    gVar.b("invalid_file");
                    break;
                case IS_FOLDER:
                    gVar.b("is_folder");
                    break;
                case INSIDE_PUBLIC_FOLDER:
                    gVar.b("inside_public_folder");
                    break;
                case INSIDE_OSX_PACKAGE:
                    gVar.b("inside_osx_package");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharingFileAccessError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharingFileAccessError sharingFileAccessError;
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
            if ("no_permission".equals(tag)) {
                sharingFileAccessError = SharingFileAccessError.NO_PERMISSION;
            } else if ("invalid_file".equals(tag)) {
                sharingFileAccessError = SharingFileAccessError.INVALID_FILE;
            } else if ("is_folder".equals(tag)) {
                sharingFileAccessError = SharingFileAccessError.IS_FOLDER;
            } else if ("inside_public_folder".equals(tag)) {
                sharingFileAccessError = SharingFileAccessError.INSIDE_PUBLIC_FOLDER;
            } else if ("inside_osx_package".equals(tag)) {
                sharingFileAccessError = SharingFileAccessError.INSIDE_OSX_PACKAGE;
            } else {
                sharingFileAccessError = SharingFileAccessError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharingFileAccessError;
        }
    }
}
