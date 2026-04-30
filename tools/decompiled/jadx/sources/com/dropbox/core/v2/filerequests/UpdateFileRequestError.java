package com.dropbox.core.v2.filerequests;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum UpdateFileRequestError {
    DISABLED_FOR_TEAM,
    OTHER,
    NOT_FOUND,
    NOT_A_FOLDER,
    APP_LACKS_ACCESS,
    NO_PERMISSION,
    EMAIL_UNVERIFIED,
    VALIDATION_ERROR;

    class Serializer extends UnionSerializer<UpdateFileRequestError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UpdateFileRequestError updateFileRequestError, g gVar) throws IOException {
            switch (updateFileRequestError) {
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
                    throw new IllegalArgumentException("Unrecognized tag: " + updateFileRequestError);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UpdateFileRequestError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UpdateFileRequestError updateFileRequestError;
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
                updateFileRequestError = UpdateFileRequestError.DISABLED_FOR_TEAM;
            } else if ("other".equals(tag)) {
                updateFileRequestError = UpdateFileRequestError.OTHER;
            } else if ("not_found".equals(tag)) {
                updateFileRequestError = UpdateFileRequestError.NOT_FOUND;
            } else if ("not_a_folder".equals(tag)) {
                updateFileRequestError = UpdateFileRequestError.NOT_A_FOLDER;
            } else if ("app_lacks_access".equals(tag)) {
                updateFileRequestError = UpdateFileRequestError.APP_LACKS_ACCESS;
            } else if ("no_permission".equals(tag)) {
                updateFileRequestError = UpdateFileRequestError.NO_PERMISSION;
            } else if ("email_unverified".equals(tag)) {
                updateFileRequestError = UpdateFileRequestError.EMAIL_UNVERIFIED;
            } else if ("validation_error".equals(tag)) {
                updateFileRequestError = UpdateFileRequestError.VALIDATION_ERROR;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return updateFileRequestError;
        }
    }
}
