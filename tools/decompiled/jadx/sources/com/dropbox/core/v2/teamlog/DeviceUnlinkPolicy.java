package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum DeviceUnlinkPolicy {
    REMOVE,
    KEEP,
    OTHER;

    class Serializer extends UnionSerializer<DeviceUnlinkPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(DeviceUnlinkPolicy deviceUnlinkPolicy, g gVar) throws IOException {
            switch (deviceUnlinkPolicy) {
                case REMOVE:
                    gVar.b("remove");
                    break;
                case KEEP:
                    gVar.b("keep");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public DeviceUnlinkPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            DeviceUnlinkPolicy deviceUnlinkPolicy;
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
            if ("remove".equals(tag)) {
                deviceUnlinkPolicy = DeviceUnlinkPolicy.REMOVE;
            } else if ("keep".equals(tag)) {
                deviceUnlinkPolicy = DeviceUnlinkPolicy.KEEP;
            } else {
                deviceUnlinkPolicy = DeviceUnlinkPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return deviceUnlinkPolicy;
        }
    }
}
