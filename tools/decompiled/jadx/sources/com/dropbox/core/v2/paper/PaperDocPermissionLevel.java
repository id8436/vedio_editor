package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.google.gdata.data.ILink;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum PaperDocPermissionLevel {
    EDIT,
    VIEW_AND_COMMENT,
    OTHER;

    class Serializer extends UnionSerializer<PaperDocPermissionLevel> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PaperDocPermissionLevel paperDocPermissionLevel, g gVar) throws IOException {
            switch (paperDocPermissionLevel) {
                case EDIT:
                    gVar.b(ILink.Rel.ENTRY_EDIT);
                    break;
                case VIEW_AND_COMMENT:
                    gVar.b("view_and_comment");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PaperDocPermissionLevel deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PaperDocPermissionLevel paperDocPermissionLevel;
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
            if (ILink.Rel.ENTRY_EDIT.equals(tag)) {
                paperDocPermissionLevel = PaperDocPermissionLevel.EDIT;
            } else if ("view_and_comment".equals(tag)) {
                paperDocPermissionLevel = PaperDocPermissionLevel.VIEW_AND_COMMENT;
            } else {
                paperDocPermissionLevel = PaperDocPermissionLevel.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return paperDocPermissionLevel;
        }
    }
}
