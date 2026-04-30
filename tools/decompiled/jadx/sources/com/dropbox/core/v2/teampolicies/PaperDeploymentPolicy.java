package com.dropbox.core.v2.teampolicies;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum PaperDeploymentPolicy {
    FULL,
    PARTIAL,
    OTHER;

    public class Serializer extends UnionSerializer<PaperDeploymentPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PaperDeploymentPolicy paperDeploymentPolicy, g gVar) throws IOException {
            switch (paperDeploymentPolicy) {
                case FULL:
                    gVar.b("full");
                    break;
                case PARTIAL:
                    gVar.b("partial");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PaperDeploymentPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PaperDeploymentPolicy paperDeploymentPolicy;
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
            if ("full".equals(tag)) {
                paperDeploymentPolicy = PaperDeploymentPolicy.FULL;
            } else if ("partial".equals(tag)) {
                paperDeploymentPolicy = PaperDeploymentPolicy.PARTIAL;
            } else {
                paperDeploymentPolicy = PaperDeploymentPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return paperDeploymentPolicy;
        }
    }
}
