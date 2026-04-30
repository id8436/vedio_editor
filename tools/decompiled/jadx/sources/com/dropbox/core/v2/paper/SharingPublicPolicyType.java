package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum SharingPublicPolicyType {
    PEOPLE_WITH_LINK_CAN_EDIT,
    PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT,
    INVITE_ONLY,
    DISABLED;

    class Serializer extends UnionSerializer<SharingPublicPolicyType> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharingPublicPolicyType sharingPublicPolicyType, g gVar) throws IOException {
            switch (sharingPublicPolicyType) {
                case PEOPLE_WITH_LINK_CAN_EDIT:
                    gVar.b("people_with_link_can_edit");
                    return;
                case PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT:
                    gVar.b("people_with_link_can_view_and_comment");
                    return;
                case INVITE_ONLY:
                    gVar.b("invite_only");
                    return;
                case DISABLED:
                    gVar.b("disabled");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + sharingPublicPolicyType);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharingPublicPolicyType deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharingPublicPolicyType sharingPublicPolicyType;
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
            if ("people_with_link_can_edit".equals(tag)) {
                sharingPublicPolicyType = SharingPublicPolicyType.PEOPLE_WITH_LINK_CAN_EDIT;
            } else if ("people_with_link_can_view_and_comment".equals(tag)) {
                sharingPublicPolicyType = SharingPublicPolicyType.PEOPLE_WITH_LINK_CAN_VIEW_AND_COMMENT;
            } else if ("invite_only".equals(tag)) {
                sharingPublicPolicyType = SharingPublicPolicyType.INVITE_ONLY;
            } else if ("disabled".equals(tag)) {
                sharingPublicPolicyType = SharingPublicPolicyType.DISABLED;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharingPublicPolicyType;
        }
    }
}
