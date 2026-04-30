package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GetSharedLinkFileError {
    SHARED_LINK_NOT_FOUND,
    SHARED_LINK_ACCESS_DENIED,
    UNSUPPORTED_LINK_TYPE,
    OTHER,
    SHARED_LINK_IS_DIRECTORY;

    class Serializer extends UnionSerializer<GetSharedLinkFileError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GetSharedLinkFileError getSharedLinkFileError, g gVar) throws IOException {
            switch (getSharedLinkFileError) {
                case SHARED_LINK_NOT_FOUND:
                    gVar.b("shared_link_not_found");
                    return;
                case SHARED_LINK_ACCESS_DENIED:
                    gVar.b("shared_link_access_denied");
                    return;
                case UNSUPPORTED_LINK_TYPE:
                    gVar.b("unsupported_link_type");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case SHARED_LINK_IS_DIRECTORY:
                    gVar.b("shared_link_is_directory");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + getSharedLinkFileError);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GetSharedLinkFileError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GetSharedLinkFileError getSharedLinkFileError;
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
            if ("shared_link_not_found".equals(tag)) {
                getSharedLinkFileError = GetSharedLinkFileError.SHARED_LINK_NOT_FOUND;
            } else if ("shared_link_access_denied".equals(tag)) {
                getSharedLinkFileError = GetSharedLinkFileError.SHARED_LINK_ACCESS_DENIED;
            } else if ("unsupported_link_type".equals(tag)) {
                getSharedLinkFileError = GetSharedLinkFileError.UNSUPPORTED_LINK_TYPE;
            } else if ("other".equals(tag)) {
                getSharedLinkFileError = GetSharedLinkFileError.OTHER;
            } else if ("shared_link_is_directory".equals(tag)) {
                getSharedLinkFileError = GetSharedLinkFileError.SHARED_LINK_IS_DIRECTORY;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return getSharedLinkFileError;
        }
    }
}
