package com.dropbox.core.v2.team;

import c.a.a.a.a.b.a;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum MobileClientPlatform {
    IPHONE,
    IPAD,
    ANDROID,
    WINDOWS_PHONE,
    BLACKBERRY,
    OTHER;

    class Serializer extends UnionSerializer<MobileClientPlatform> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MobileClientPlatform mobileClientPlatform, g gVar) throws IOException {
            switch (mobileClientPlatform) {
                case IPHONE:
                    gVar.b("iphone");
                    break;
                case IPAD:
                    gVar.b("ipad");
                    break;
                case ANDROID:
                    gVar.b(a.ANDROID_CLIENT_TYPE);
                    break;
                case WINDOWS_PHONE:
                    gVar.b("windows_phone");
                    break;
                case BLACKBERRY:
                    gVar.b("blackberry");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MobileClientPlatform deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MobileClientPlatform mobileClientPlatform;
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
            if ("iphone".equals(tag)) {
                mobileClientPlatform = MobileClientPlatform.IPHONE;
            } else if ("ipad".equals(tag)) {
                mobileClientPlatform = MobileClientPlatform.IPAD;
            } else if (a.ANDROID_CLIENT_TYPE.equals(tag)) {
                mobileClientPlatform = MobileClientPlatform.ANDROID;
            } else if ("windows_phone".equals(tag)) {
                mobileClientPlatform = MobileClientPlatform.WINDOWS_PHONE;
            } else if ("blackberry".equals(tag)) {
                mobileClientPlatform = MobileClientPlatform.BLACKBERRY;
            } else {
                mobileClientPlatform = MobileClientPlatform.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return mobileClientPlatform;
        }
    }
}
