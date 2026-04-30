package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum DeviceType {
    DESKTOP,
    MOBILE,
    OTHER;

    class Serializer extends UnionSerializer<DeviceType> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(DeviceType deviceType, g gVar) throws IOException {
            switch (deviceType) {
                case DESKTOP:
                    gVar.b("desktop");
                    break;
                case MOBILE:
                    gVar.b("mobile");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public DeviceType deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            DeviceType deviceType;
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
            if ("desktop".equals(tag)) {
                deviceType = DeviceType.DESKTOP;
            } else if ("mobile".equals(tag)) {
                deviceType = DeviceType.MOBILE;
            } else {
                deviceType = DeviceType.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return deviceType;
        }
    }
}
