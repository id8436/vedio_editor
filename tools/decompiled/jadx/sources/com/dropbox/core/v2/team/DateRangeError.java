package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum DateRangeError {
    OTHER;

    /* JADX INFO: renamed from: com.dropbox.core.v2.team.DateRangeError$1, reason: invalid class name */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$dropbox$core$v2$team$DateRangeError = new int[DateRangeError.values().length];
    }

    class Serializer extends UnionSerializer<DateRangeError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(DateRangeError dateRangeError, g gVar) throws IOException {
            int i = AnonymousClass1.$SwitchMap$com$dropbox$core$v2$team$DateRangeError[dateRangeError.ordinal()];
            gVar.b("other");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public DateRangeError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
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
            DateRangeError dateRangeError = DateRangeError.OTHER;
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return dateRangeError;
        }
    }
}
