package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum FileAction {
    DISABLE_VIEWER_INFO,
    EDIT_CONTENTS,
    ENABLE_VIEWER_INFO,
    INVITE_VIEWER,
    INVITE_VIEWER_NO_COMMENT,
    UNSHARE,
    RELINQUISH_MEMBERSHIP,
    SHARE_LINK,
    CREATE_LINK,
    OTHER;

    class Serializer extends UnionSerializer<FileAction> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(FileAction fileAction, g gVar) throws IOException {
            switch (fileAction) {
                case DISABLE_VIEWER_INFO:
                    gVar.b("disable_viewer_info");
                    break;
                case EDIT_CONTENTS:
                    gVar.b("edit_contents");
                    break;
                case ENABLE_VIEWER_INFO:
                    gVar.b("enable_viewer_info");
                    break;
                case INVITE_VIEWER:
                    gVar.b("invite_viewer");
                    break;
                case INVITE_VIEWER_NO_COMMENT:
                    gVar.b("invite_viewer_no_comment");
                    break;
                case UNSHARE:
                    gVar.b("unshare");
                    break;
                case RELINQUISH_MEMBERSHIP:
                    gVar.b("relinquish_membership");
                    break;
                case SHARE_LINK:
                    gVar.b("share_link");
                    break;
                case CREATE_LINK:
                    gVar.b("create_link");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public FileAction deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            FileAction fileAction;
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
            if ("disable_viewer_info".equals(tag)) {
                fileAction = FileAction.DISABLE_VIEWER_INFO;
            } else if ("edit_contents".equals(tag)) {
                fileAction = FileAction.EDIT_CONTENTS;
            } else if ("enable_viewer_info".equals(tag)) {
                fileAction = FileAction.ENABLE_VIEWER_INFO;
            } else if ("invite_viewer".equals(tag)) {
                fileAction = FileAction.INVITE_VIEWER;
            } else if ("invite_viewer_no_comment".equals(tag)) {
                fileAction = FileAction.INVITE_VIEWER_NO_COMMENT;
            } else if ("unshare".equals(tag)) {
                fileAction = FileAction.UNSHARE;
            } else if ("relinquish_membership".equals(tag)) {
                fileAction = FileAction.RELINQUISH_MEMBERSHIP;
            } else if ("share_link".equals(tag)) {
                fileAction = FileAction.SHARE_LINK;
            } else if ("create_link".equals(tag)) {
                fileAction = FileAction.CREATE_LINK;
            } else {
                fileAction = FileAction.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return fileAction;
        }
    }
}
