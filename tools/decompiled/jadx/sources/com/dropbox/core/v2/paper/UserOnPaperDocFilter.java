package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum UserOnPaperDocFilter {
    VISITED,
    SHARED,
    OTHER;

    class Serializer extends UnionSerializer<UserOnPaperDocFilter> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UserOnPaperDocFilter userOnPaperDocFilter, g gVar) throws IOException {
            switch (userOnPaperDocFilter) {
                case VISITED:
                    gVar.b("visited");
                    break;
                case SHARED:
                    gVar.b("shared");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UserOnPaperDocFilter deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UserOnPaperDocFilter userOnPaperDocFilter;
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
            if ("visited".equals(tag)) {
                userOnPaperDocFilter = UserOnPaperDocFilter.VISITED;
            } else if ("shared".equals(tag)) {
                userOnPaperDocFilter = UserOnPaperDocFilter.SHARED;
            } else {
                userOnPaperDocFilter = UserOnPaperDocFilter.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return userOnPaperDocFilter;
        }
    }
}
