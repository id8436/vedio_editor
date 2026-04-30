package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum DesktopPlatform {
    WINDOWS,
    MAC,
    LINUX,
    OTHER;

    class Serializer extends UnionSerializer<DesktopPlatform> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(DesktopPlatform desktopPlatform, g gVar) throws IOException {
            switch (desktopPlatform) {
                case WINDOWS:
                    gVar.b("windows");
                    break;
                case MAC:
                    gVar.b("mac");
                    break;
                case LINUX:
                    gVar.b("linux");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public DesktopPlatform deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            DesktopPlatform desktopPlatform;
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
            if ("windows".equals(tag)) {
                desktopPlatform = DesktopPlatform.WINDOWS;
            } else if ("mac".equals(tag)) {
                desktopPlatform = DesktopPlatform.MAC;
            } else if ("linux".equals(tag)) {
                desktopPlatform = DesktopPlatform.LINUX;
            } else {
                desktopPlatform = DesktopPlatform.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return desktopPlatform;
        }
    }
}
