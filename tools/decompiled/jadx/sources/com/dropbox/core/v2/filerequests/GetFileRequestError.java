package com.dropbox.core.v2.filerequests;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GetFileRequestError {
    DISABLED_FOR_TEAM,
    OTHER,
    NOT_FOUND,
    NOT_A_FOLDER,
    APP_LACKS_ACCESS,
    NO_PERMISSION,
    EMAIL_UNVERIFIED,
    VALIDATION_ERROR;

    class Serializer extends UnionSerializer<GetFileRequestError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GetFileRequestError getFileRequestError, g gVar) throws IOException {
            switch (getFileRequestError) {
                case DISABLED_FOR_TEAM:
                    gVar.b("disabled_for_team");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case NOT_FOUND:
                    gVar.b("not_found");
                    return;
                case NOT_A_FOLDER:
                    gVar.b("not_a_folder");
                    return;
                case APP_LACKS_ACCESS:
                    gVar.b("app_lacks_access");
                    return;
                case NO_PERMISSION:
                    gVar.b("no_permission");
                    return;
                case EMAIL_UNVERIFIED:
                    gVar.b("email_unverified");
                    return;
                case VALIDATION_ERROR:
                    gVar.b("validation_error");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + getFileRequestError);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GetFileRequestError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GetFileRequestError getFileRequestError;
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
            if ("disabled_for_team".equals(tag)) {
                getFileRequestError = GetFileRequestError.DISABLED_FOR_TEAM;
            } else if ("other".equals(tag)) {
                getFileRequestError = GetFileRequestError.OTHER;
            } else if ("not_found".equals(tag)) {
                getFileRequestError = GetFileRequestError.NOT_FOUND;
            } else if ("not_a_folder".equals(tag)) {
                getFileRequestError = GetFileRequestError.NOT_A_FOLDER;
            } else if ("app_lacks_access".equals(tag)) {
                getFileRequestError = GetFileRequestError.APP_LACKS_ACCESS;
            } else if ("no_permission".equals(tag)) {
                getFileRequestError = GetFileRequestError.NO_PERMISSION;
            } else if ("email_unverified".equals(tag)) {
                getFileRequestError = GetFileRequestError.EMAIL_UNVERIFIED;
            } else if ("validation_error".equals(tag)) {
                getFileRequestError = GetFileRequestError.VALIDATION_ERROR;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return getFileRequestError;
        }
    }
}
