package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharedLinkSettingsError {
    INVALID_SETTINGS,
    NOT_AUTHORIZED;

    class Serializer extends UnionSerializer<SharedLinkSettingsError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharedLinkSettingsError sharedLinkSettingsError, g gVar) throws IOException {
            switch (sharedLinkSettingsError) {
                case INVALID_SETTINGS:
                    gVar.b("invalid_settings");
                    return;
                case NOT_AUTHORIZED:
                    gVar.b("not_authorized");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + sharedLinkSettingsError);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharedLinkSettingsError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharedLinkSettingsError sharedLinkSettingsError;
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
            if ("invalid_settings".equals(tag)) {
                sharedLinkSettingsError = SharedLinkSettingsError.INVALID_SETTINGS;
            } else if ("not_authorized".equals(tag)) {
                sharedLinkSettingsError = SharedLinkSettingsError.NOT_AUTHORIZED;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharedLinkSettingsError;
        }
    }
}
