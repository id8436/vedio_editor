package com.dropbox.core.v2.filerequests;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.google.gdata.client.authn.oauthproxy.OAuthProxyRequest;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum GracePeriod {
    ONE_DAY,
    TWO_DAYS,
    SEVEN_DAYS,
    THIRTY_DAYS,
    ALWAYS,
    OTHER;

    class Serializer extends UnionSerializer<GracePeriod> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GracePeriod gracePeriod, g gVar) throws IOException {
            switch (gracePeriod) {
                case ONE_DAY:
                    gVar.b("one_day");
                    break;
                case TWO_DAYS:
                    gVar.b("two_days");
                    break;
                case SEVEN_DAYS:
                    gVar.b("seven_days");
                    break;
                case THIRTY_DAYS:
                    gVar.b("thirty_days");
                    break;
                case ALWAYS:
                    gVar.b(OAuthProxyRequest.DEFAULT_USE_TOKEN);
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GracePeriod deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GracePeriod gracePeriod;
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
            if ("one_day".equals(tag)) {
                gracePeriod = GracePeriod.ONE_DAY;
            } else if ("two_days".equals(tag)) {
                gracePeriod = GracePeriod.TWO_DAYS;
            } else if ("seven_days".equals(tag)) {
                gracePeriod = GracePeriod.SEVEN_DAYS;
            } else if ("thirty_days".equals(tag)) {
                gracePeriod = GracePeriod.THIRTY_DAYS;
            } else if (OAuthProxyRequest.DEFAULT_USE_TOKEN.equals(tag)) {
                gracePeriod = GracePeriod.ALWAYS;
            } else {
                gracePeriod = GracePeriod.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return gracePeriod;
        }
    }
}
