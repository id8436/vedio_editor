package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum PlacementRestriction {
    EUROPE_ONLY,
    NONE,
    OTHER;

    class Serializer extends UnionSerializer<PlacementRestriction> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PlacementRestriction placementRestriction, g gVar) throws IOException {
            switch (placementRestriction) {
                case EUROPE_ONLY:
                    gVar.b("europe_only");
                    break;
                case NONE:
                    gVar.b("none");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PlacementRestriction deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PlacementRestriction placementRestriction;
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
            if ("europe_only".equals(tag)) {
                placementRestriction = PlacementRestriction.EUROPE_ONLY;
            } else if ("none".equals(tag)) {
                placementRestriction = PlacementRestriction.NONE;
            } else {
                placementRestriction = PlacementRestriction.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return placementRestriction;
        }
    }
}
