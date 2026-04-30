package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum FolderSharingPolicyType {
    TEAM,
    INVITE_ONLY;

    class Serializer extends UnionSerializer<FolderSharingPolicyType> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(FolderSharingPolicyType folderSharingPolicyType, g gVar) throws IOException {
            switch (folderSharingPolicyType) {
                case TEAM:
                    gVar.b("team");
                    return;
                case INVITE_ONLY:
                    gVar.b("invite_only");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + folderSharingPolicyType);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public FolderSharingPolicyType deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            FolderSharingPolicyType folderSharingPolicyType;
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
            if ("team".equals(tag)) {
                folderSharingPolicyType = FolderSharingPolicyType.TEAM;
            } else if ("invite_only".equals(tag)) {
                folderSharingPolicyType = FolderSharingPolicyType.INVITE_ONLY;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return folderSharingPolicyType;
        }
    }
}
