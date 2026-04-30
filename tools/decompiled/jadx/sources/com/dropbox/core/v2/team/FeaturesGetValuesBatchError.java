package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum FeaturesGetValuesBatchError {
    EMPTY_FEATURES_LIST,
    OTHER;

    class Serializer extends UnionSerializer<FeaturesGetValuesBatchError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(FeaturesGetValuesBatchError featuresGetValuesBatchError, g gVar) throws IOException {
            switch (featuresGetValuesBatchError) {
                case EMPTY_FEATURES_LIST:
                    gVar.b("empty_features_list");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public FeaturesGetValuesBatchError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            FeaturesGetValuesBatchError featuresGetValuesBatchError;
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
            if ("empty_features_list".equals(tag)) {
                featuresGetValuesBatchError = FeaturesGetValuesBatchError.EMPTY_FEATURES_LIST;
            } else {
                featuresGetValuesBatchError = FeaturesGetValuesBatchError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return featuresGetValuesBatchError;
        }
    }
}
