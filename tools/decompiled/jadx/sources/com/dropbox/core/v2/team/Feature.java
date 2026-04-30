package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum Feature {
    UPLOAD_API_RATE_LIMIT,
    HAS_TEAM_SHARED_DROPBOX,
    OTHER;

    class Serializer extends UnionSerializer<Feature> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(Feature feature, g gVar) throws IOException {
            switch (feature) {
                case UPLOAD_API_RATE_LIMIT:
                    gVar.b("upload_api_rate_limit");
                    break;
                case HAS_TEAM_SHARED_DROPBOX:
                    gVar.b("has_team_shared_dropbox");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public Feature deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            Feature feature;
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
            if ("upload_api_rate_limit".equals(tag)) {
                feature = Feature.UPLOAD_API_RATE_LIMIT;
            } else if ("has_team_shared_dropbox".equals(tag)) {
                feature = Feature.HAS_TEAM_SHARED_DROPBOX;
            } else {
                feature = Feature.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return feature;
        }
    }
}
