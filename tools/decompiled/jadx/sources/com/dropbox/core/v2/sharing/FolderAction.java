package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum FolderAction {
    CHANGE_OPTIONS,
    DISABLE_VIEWER_INFO,
    EDIT_CONTENTS,
    ENABLE_VIEWER_INFO,
    INVITE_EDITOR,
    INVITE_VIEWER,
    INVITE_VIEWER_NO_COMMENT,
    RELINQUISH_MEMBERSHIP,
    UNMOUNT,
    UNSHARE,
    LEAVE_A_COPY,
    SHARE_LINK,
    CREATE_LINK,
    OTHER;

    class Serializer extends UnionSerializer<FolderAction> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(FolderAction folderAction, g gVar) throws IOException {
            switch (folderAction) {
                case CHANGE_OPTIONS:
                    gVar.b("change_options");
                    break;
                case DISABLE_VIEWER_INFO:
                    gVar.b("disable_viewer_info");
                    break;
                case EDIT_CONTENTS:
                    gVar.b("edit_contents");
                    break;
                case ENABLE_VIEWER_INFO:
                    gVar.b("enable_viewer_info");
                    break;
                case INVITE_EDITOR:
                    gVar.b("invite_editor");
                    break;
                case INVITE_VIEWER:
                    gVar.b("invite_viewer");
                    break;
                case INVITE_VIEWER_NO_COMMENT:
                    gVar.b("invite_viewer_no_comment");
                    break;
                case RELINQUISH_MEMBERSHIP:
                    gVar.b("relinquish_membership");
                    break;
                case UNMOUNT:
                    gVar.b("unmount");
                    break;
                case UNSHARE:
                    gVar.b("unshare");
                    break;
                case LEAVE_A_COPY:
                    gVar.b("leave_a_copy");
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
        public FolderAction deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            FolderAction folderAction;
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
            if ("change_options".equals(tag)) {
                folderAction = FolderAction.CHANGE_OPTIONS;
            } else if ("disable_viewer_info".equals(tag)) {
                folderAction = FolderAction.DISABLE_VIEWER_INFO;
            } else if ("edit_contents".equals(tag)) {
                folderAction = FolderAction.EDIT_CONTENTS;
            } else if ("enable_viewer_info".equals(tag)) {
                folderAction = FolderAction.ENABLE_VIEWER_INFO;
            } else if ("invite_editor".equals(tag)) {
                folderAction = FolderAction.INVITE_EDITOR;
            } else if ("invite_viewer".equals(tag)) {
                folderAction = FolderAction.INVITE_VIEWER;
            } else if ("invite_viewer_no_comment".equals(tag)) {
                folderAction = FolderAction.INVITE_VIEWER_NO_COMMENT;
            } else if ("relinquish_membership".equals(tag)) {
                folderAction = FolderAction.RELINQUISH_MEMBERSHIP;
            } else if ("unmount".equals(tag)) {
                folderAction = FolderAction.UNMOUNT;
            } else if ("unshare".equals(tag)) {
                folderAction = FolderAction.UNSHARE;
            } else if ("leave_a_copy".equals(tag)) {
                folderAction = FolderAction.LEAVE_A_COPY;
            } else if ("share_link".equals(tag)) {
                folderAction = FolderAction.SHARE_LINK;
            } else if ("create_link".equals(tag)) {
                folderAction = FolderAction.CREATE_LINK;
            } else {
                folderAction = FolderAction.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return folderAction;
        }
    }
}
