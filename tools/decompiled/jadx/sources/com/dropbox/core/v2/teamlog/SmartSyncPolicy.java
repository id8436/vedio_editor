package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SmartSyncPolicy {
    LOCAL_ONLY,
    SYNCED,
    OTHER;

    class Serializer extends UnionSerializer<SmartSyncPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SmartSyncPolicy smartSyncPolicy, g gVar) throws IOException {
            switch (smartSyncPolicy) {
                case LOCAL_ONLY:
                    gVar.b("local_only");
                    break;
                case SYNCED:
                    gVar.b("synced");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SmartSyncPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SmartSyncPolicy smartSyncPolicy;
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
            if ("local_only".equals(tag)) {
                smartSyncPolicy = SmartSyncPolicy.LOCAL_ONLY;
            } else if ("synced".equals(tag)) {
                smartSyncPolicy = SmartSyncPolicy.SYNCED;
            } else {
                smartSyncPolicy = SmartSyncPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return smartSyncPolicy;
        }
    }
}
