package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import org.mortbay.jetty.servlet.ServletHandler;

/* JADX INFO: loaded from: classes2.dex */
public enum SmartSyncOptOutPolicy {
    DEFAULT,
    OPTED_OUT,
    OTHER;

    class Serializer extends UnionSerializer<SmartSyncOptOutPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SmartSyncOptOutPolicy smartSyncOptOutPolicy, g gVar) throws IOException {
            switch (smartSyncOptOutPolicy) {
                case DEFAULT:
                    gVar.b(ServletHandler.__DEFAULT_SERVLET);
                    break;
                case OPTED_OUT:
                    gVar.b("opted_out");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SmartSyncOptOutPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SmartSyncOptOutPolicy smartSyncOptOutPolicy;
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
            if (ServletHandler.__DEFAULT_SERVLET.equals(tag)) {
                smartSyncOptOutPolicy = SmartSyncOptOutPolicy.DEFAULT;
            } else if ("opted_out".equals(tag)) {
                smartSyncOptOutPolicy = SmartSyncOptOutPolicy.OPTED_OUT;
            } else {
                smartSyncOptOutPolicy = SmartSyncOptOutPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return smartSyncOptOutPolicy;
        }
    }
}
