package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum MemberAction {
    LEAVE_A_COPY,
    MAKE_EDITOR,
    MAKE_OWNER,
    MAKE_VIEWER,
    MAKE_VIEWER_NO_COMMENT,
    REMOVE,
    OTHER;

    class Serializer extends UnionSerializer<MemberAction> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MemberAction memberAction, g gVar) throws IOException {
            switch (memberAction) {
                case LEAVE_A_COPY:
                    gVar.b("leave_a_copy");
                    break;
                case MAKE_EDITOR:
                    gVar.b("make_editor");
                    break;
                case MAKE_OWNER:
                    gVar.b("make_owner");
                    break;
                case MAKE_VIEWER:
                    gVar.b("make_viewer");
                    break;
                case MAKE_VIEWER_NO_COMMENT:
                    gVar.b("make_viewer_no_comment");
                    break;
                case REMOVE:
                    gVar.b("remove");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MemberAction deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MemberAction memberAction;
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
            if ("leave_a_copy".equals(tag)) {
                memberAction = MemberAction.LEAVE_A_COPY;
            } else if ("make_editor".equals(tag)) {
                memberAction = MemberAction.MAKE_EDITOR;
            } else if ("make_owner".equals(tag)) {
                memberAction = MemberAction.MAKE_OWNER;
            } else if ("make_viewer".equals(tag)) {
                memberAction = MemberAction.MAKE_VIEWER;
            } else if ("make_viewer_no_comment".equals(tag)) {
                memberAction = MemberAction.MAKE_VIEWER_NO_COMMENT;
            } else if ("remove".equals(tag)) {
                memberAction = MemberAction.REMOVE;
            } else {
                memberAction = MemberAction.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return memberAction;
        }
    }
}
