package com.dropbox.core.v2.teamlog;

import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharedFolderMembershipManagementPolicy {
    OWNER,
    EDITORS,
    OTHER;

    class Serializer extends UnionSerializer<SharedFolderMembershipManagementPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharedFolderMembershipManagementPolicy sharedFolderMembershipManagementPolicy, g gVar) throws IOException {
            switch (sharedFolderMembershipManagementPolicy) {
                case OWNER:
                    gVar.b(DCXProjectKeys.kDCXKey_Project_owner);
                    break;
                case EDITORS:
                    gVar.b("editors");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharedFolderMembershipManagementPolicy deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharedFolderMembershipManagementPolicy sharedFolderMembershipManagementPolicy;
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
            if (DCXProjectKeys.kDCXKey_Project_owner.equals(tag)) {
                sharedFolderMembershipManagementPolicy = SharedFolderMembershipManagementPolicy.OWNER;
            } else if ("editors".equals(tag)) {
                sharedFolderMembershipManagementPolicy = SharedFolderMembershipManagementPolicy.EDITORS;
            } else {
                sharedFolderMembershipManagementPolicy = SharedFolderMembershipManagementPolicy.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharedFolderMembershipManagementPolicy;
        }
    }
}
