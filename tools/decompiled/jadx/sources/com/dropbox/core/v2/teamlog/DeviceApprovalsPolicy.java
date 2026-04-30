package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum DeviceApprovalsPolicy {
    UNLIMITED,
    LIMITED,
    OTHER;

    class Serializer extends UnionSerializer<DeviceApprovalsPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(DeviceApprovalsPolicy deviceApprovalsPolicy, g gVar) throws IOException {
            switch (deviceApprovalsPolicy) {
                case UNLIMITED:
                    gVar.b("unlimited");
                    break;
                case LIMITED:
                    gVar.b("limited");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public DeviceApprovalsPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            DeviceApprovalsPolicy deviceApprovalsPolicy;
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
            if ("unlimited".equals(tag)) {
                deviceApprovalsPolicy = DeviceApprovalsPolicy.UNLIMITED;
            } else if ("limited".equals(tag)) {
                deviceApprovalsPolicy = DeviceApprovalsPolicy.LIMITED;
            } else {
                deviceApprovalsPolicy = DeviceApprovalsPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return deviceApprovalsPolicy;
        }
    }
}
