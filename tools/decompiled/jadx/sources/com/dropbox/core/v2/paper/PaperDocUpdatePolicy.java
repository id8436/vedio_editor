package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum PaperDocUpdatePolicy {
    APPEND,
    PREPEND,
    OVERWRITE_ALL,
    OTHER;

    class Serializer extends UnionSerializer<PaperDocUpdatePolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PaperDocUpdatePolicy paperDocUpdatePolicy, g gVar) throws IOException {
            switch (paperDocUpdatePolicy) {
                case APPEND:
                    gVar.b("append");
                    break;
                case PREPEND:
                    gVar.b("prepend");
                    break;
                case OVERWRITE_ALL:
                    gVar.b("overwrite_all");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PaperDocUpdatePolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PaperDocUpdatePolicy paperDocUpdatePolicy;
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
            if ("append".equals(tag)) {
                paperDocUpdatePolicy = PaperDocUpdatePolicy.APPEND;
            } else if ("prepend".equals(tag)) {
                paperDocUpdatePolicy = PaperDocUpdatePolicy.PREPEND;
            } else if ("overwrite_all".equals(tag)) {
                paperDocUpdatePolicy = PaperDocUpdatePolicy.OVERWRITE_ALL;
            } else {
                paperDocUpdatePolicy = PaperDocUpdatePolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return paperDocUpdatePolicy;
        }
    }
}
