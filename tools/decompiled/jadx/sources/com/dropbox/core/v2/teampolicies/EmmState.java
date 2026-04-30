package com.dropbox.core.v2.teampolicies;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum EmmState {
    DISABLED,
    OPTIONAL,
    REQUIRED,
    OTHER;

    public class Serializer extends UnionSerializer<EmmState> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(EmmState emmState, g gVar) throws IOException {
            switch (emmState) {
                case DISABLED:
                    gVar.b("disabled");
                    break;
                case OPTIONAL:
                    gVar.b("optional");
                    break;
                case REQUIRED:
                    gVar.b("required");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public EmmState deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            EmmState emmState;
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
            if ("disabled".equals(tag)) {
                emmState = EmmState.DISABLED;
            } else if ("optional".equals(tag)) {
                emmState = EmmState.OPTIONAL;
            } else if ("required".equals(tag)) {
                emmState = EmmState.REQUIRED;
            } else {
                emmState = EmmState.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return emmState;
        }
    }
}
